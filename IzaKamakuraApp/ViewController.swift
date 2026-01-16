import UIKit
import MapKit
import AVKit

final class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var kamakuramap: MKMapView!
    // ピン3つ（MP4直リンク.）
    private let spots: [(title: String, lat: Double, lon: Double, url: String)] = [
        ("茶道体験", 35.319, 139.546, "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("座禅体験　報国寺", 35.319997, 139.569221, "https://www.w3schools.com/html/movie.mp4"),
        ("鎌倉彫工房", 35.320424, 139.553299, "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("朝食屋コバカバ", 35.317481, 139.551333, "https://www.w3schools.com/html/mov_bbb.mp4")
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        guard kamakuramap != nil else {
            print("Kamakura map is nil")
            return
        }
        // 「ピン押したよ」を受け取れるようにする
        kamakuramap.delegate = self

        // 初期位置（鎌倉あたり）
        let center = CLLocationCoordinate2D(latitude: 35.319, longitude: 139.546)

        // どれくらいズームするか（メートル）
        let region = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 2500,
            longitudinalMeters: 2500
        )

        // 地図に「この位置で表示してね」
        kamakuramap.setRegion(region, animated: false)

        // ピン配置（spotsの数だけ繰り返す）
        for s in spots {
            let pin = MKPointAnnotation()
            pin.title = s.title
            pin.coordinate = CLLocationCoordinate2D(latitude: s.lat, longitude: s.lon)
            kamakuramap.addAnnotation(pin)
        }
    }

    // ピンを押したら：下から画面 → 自動再生（無音）
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

        // ① 押されたピンのタイトル（名前）を取る
        guard let title = view.annotation?.title ?? nil else { return }

        // ② spotsの中から「同じタイトルのもの」を探す
        guard let spot = spots.first(where: { $0.title == title }) else { return }

        // ③ URL文字列をURLに変える（動画の住所）
        guard let videoURL = URL(string: spot.url) else { return }

        // ④ 下から出る画面（動画係）を作る
        let sheetVC = VideoSheetVC(titleText: spot.title, videoURL: videoURL)

        // ⑤ 下から出すモードにする
        sheetVC.modalPresentationStyle = .pageSheet

        // ⑥ シートのサイズ（中くらい / 大きい）
        if let sheet = sheetVC.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
        }

        // ⑦ 画面を出す → 出たら再生開始
        present(sheetVC, animated: true) {
            sheetVC.play()
        }

        // ⑧ 同じピンを何度でも押せるように選択解除
        mapView.deselectAnnotation(view.annotation, animated: false)
    }
}

// 下から出る詳細画面（タイトル + 動画）
final class VideoSheetVC: UIViewController {

    private let titleText: String
    private let videoURL: URL

    private var player: AVPlayer?
    private let playerVC = AVPlayerViewController()

    init(titleText: String, videoURL: URL) {
        self.titleText = titleText
        self.videoURL = videoURL
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        // タイトル
        let label = UILabel()
        label.text = titleText
        label.font = .boldSystemFont(ofSize: 28)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        // 動画プレイヤー（この画面の中に埋め込む）
        addChild(playerVC)
        view.addSubview(playerVC.view)
        playerVC.view.translatesAutoresizingMaskIntoConstraints = false
        playerVC.didMove(toParent: self)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            playerVC.view.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            playerVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            playerVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            playerVC.view.heightAnchor.constraint(equalToConstant: 260)
        ])

        // 動画を準備する
        let p = AVPlayer(url: videoURL)

        // 自動再生が通りやすいように無音スタート
        p.isMuted = true

        self.player = p
        playerVC.player = p
        playerVC.showsPlaybackControls = true
    }

    // 再生スイッチ
    func play() {
        player?.play()
    }

    // 閉じるとき停止
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        player?.pause()
    }
}

//test

