import UIKit
import AVKit
import AVFoundation

class HomeViewController: UIViewController {

  var player: AVPlayer?
   var playerLayer: AVPlayerLayer?

  @IBOutlet weak var videoView: UIView!
  @IBOutlet weak var titlelabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
    


override func viewDidLoad() {
      super.viewDidLoad()


    


      guard let path = Bundle.main.path(forResource: "Top動画", ofType: "MOV") else { return }

      let url = URL(fileURLWithPath: path)
      player = AVPlayer(url: url)

      playerLayer = AVPlayerLayer(player: player)
        //playerLayer?.frame = videoView.bounds
      playerLayer?.videoGravity = .resizeAspectFill
        videoView.clipsToBounds = true
        videoView.layer.insertSublayer(playerLayer!, at: 0)
        view.sendSubviewToBack(videoView)

      //  view.bringSubviewToFront(nextButton)
        //view.bringSubviewToFront(titleLabel)
        //view.bringSubviewToFront(subtitleLabel)
        
        player?.play()
      player?.isMuted = true

        NotificationCenter.default.addObserver(
          self,
          selector: #selector(loopVideo),
          name: .AVPlayerItemDidPlayToEndTime,
          object: player?.currentItem
      )
 //   override func viewDidLoad() {
    //       super.viewDidLoad()
    //
        // タイトルの影
    //  titlelabel.layer.shadowColor = UIColor.black.cgColor
    //        titlelabel.layer.shadowOpacity = 0.6
    //  titlelabel.layer.shadowOffset = CGSize(width: 0, height: 2)
    //  titlelabel.layer.shadowRadius = 4

        // サブタイトルも同じなら追加
    //  subtitleLabel.layer.shadowColor = UIColor.black.cgColor
    //  subtitleLabel.layer.shadowOpacity = 0.6
    //  subtitleLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
    //  subtitleLabel.layer.shadowRadius = 4
    //}
  }


    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer?.frame = videoView.bounds
    }

  override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
  //    self.view.bringSubviewToFront(nextButton) // ←ここ
      
  }

  @objc func loopVideo() {
      player?.seek(to: .zero)
      player?.play()
      

  }
}
