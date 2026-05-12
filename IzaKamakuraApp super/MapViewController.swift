import UIKit
import MapKit
import AVKit

final class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var kamakuramap: MKMapView!
    @IBOutlet weak var textView: UITextView!

    private let spots: [(title: String, lat: Double, lon: Double, description: String, imageName: String, link: String)] = [
        ("茶道体験", 35.319, 139.546, "https://www.w3schools.com/html/mov_bbb.mp4",
         "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("座禅体験　建長寺", 35.319997, 139.569221, "https://www.w3schools.com/html/movie.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/movie.mp4"),
        ("鎌倉彫資料館", 35.320424, 139.553299, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("朝食屋コバカバ", 35.317481, 139.551333, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("報国寺", 35.320270, 139.569585, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("和菓子", 35.339318, 139.537025, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("鶴岡八幡宮",
         35.325184,
         139.556179,
         "【基本情報】\n🕒 拝観時間 :本宮　6:00頃〜日没まで\n💴 拝観料 : 宝物殿は大人200円、高校生以下100円\n🚃 アクセス : 「JR鎌倉駅」東口から徒歩10分\n📍 住所 :  神奈川県鎌倉市雪ノ下2-1-31「JR鎌倉駅」東口から徒歩10分",
         "鶴岡八幡宮",
         "https://www.hachimangu.or.jp/"),
        ("妙本寺",35.317179, 139.557226, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("銭洗弁財天",35.325818, 139.542105, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("長谷寺",35.312465, 139.533063, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("本覚寺",35.317311, 139.552356, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("高徳院",35.316815, 139.535744,
         " 四季折々の風景が楽しめる鎌倉の大仏さま\n\n【【基本情報】\n🕒 拝観時間 :4-9月　8:00-17:30  10-3月　8:00-17:00（入場は閉門15分前まで）\n💴 拝観料 : 一般・中高生300円　小学生150円　大仏胎内50円 \n🚃 アクセス : 江ノ電長谷寺駅より徒歩約12分\n📍 住所 :  神奈川県鎌倉市長谷4-2-28",
         "鎌倉大仏",
         "https://www.kotoku-in.jp/index.php#guidance"),
        ("鎌倉駅",35.31904, 139.550414, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("円覚寺",35.337725, 139.547525, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("明月院",35.33489, 139.551523, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("浄明寺",35.33489, 139.551523, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("東慶寺",35.335141, 139.54562, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("鎌倉彫工芸館",35.320424, 139.553299, "https://www.w3schools.com/html/mov_bbb.mp4", "鶴岡八幡宮", "https://www.w3schools.com/html/mov_bbb.mp4"),
        ("レンタサイクル", 35.31852, 139.550821,
         "自転車で自由に巡る、鎌倉をもっと楽しむ旅\n\n【基本情報】\n🕒 営業時間 : 8:30〜17:00\n💴 料金 : 約1,200円〜\n📍 神奈川県鎌倉市長谷2丁目17-1\n",
         "自転車", "https://www.jrbustech.co.jp/wp/shop_service"),
        ("北鎌倉駅", 35.337227, 139.545194 , "北鎌倉駅", "鶴岡八幡宮", "")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        kamakuramap.delegate = self

        let center = CLLocationCoordinate2D(latitude: 35.319, longitude: 139.546)
        let region = MKCoordinateRegion(center: center,
                                        latitudinalMeters: 2500,
                                        longitudinalMeters: 2500)

        kamakuramap.setRegion(region, animated: false)

        for s in spots {
            let pin = MKPointAnnotation()
            pin.title = s.title
            pin.coordinate = CLLocationCoordinate2D(latitude: s.lat, longitude: s.lon)
            kamakuramap.addAnnotation(pin)
        }
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

        guard let title = view.annotation?.title ?? nil else { return }
        guard let spot = spots.first(where: { $0.title == title }) else { return }

        let sheetVC = SimpleDetailVC()
        sheetVC.titleText = spot.title
        sheetVC.detailText = spot.description
        sheetVC.linkText = spot.link
        sheetVC.imageName = spot.imageName

        if let sheet = sheetVC.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
        }

        present(sheetVC, animated: true)
        mapView.deselectAnnotation(view.annotation, animated: false)
    }
}

class SimpleDetailVC: UIViewController {
    
    var titleText: String = ""
    var detailText: String = ""
    var linkText: String = ""
    var imageName: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let titleLabel = UILabel()
        titleLabel.text = titleText
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.image = UIImage(named: imageName)

       
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center


        let detailLabel = UILabel()
        detailLabel.numberOfLines = 0
        detailLabel.translatesAutoresizingMaskIntoConstraints = false

      
        detailLabel.font = UIFont.systemFont(ofSize: 20)


        let linkTextView = UITextView()
        linkTextView.translatesAutoresizingMaskIntoConstraints = false
        linkTextView.isEditable = false
        linkTextView.isScrollEnabled = false
        linkTextView.dataDetectorTypes = .link

       
        linkTextView.font = UIFont.systemFont(ofSize: 20)
        
        detailLabel.text = detailText
        linkTextView.text = linkText
        
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(detailLabel)
        view.addSubview(linkTextView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.heightAnchor.constraint(equalToConstant: 220),

            detailLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            linkTextView.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 10),
            linkTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            linkTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            linkTextView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
