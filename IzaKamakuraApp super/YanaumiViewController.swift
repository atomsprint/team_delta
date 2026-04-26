import UIKit

class YanaumiViewController: UIViewController {
    
    
    @IBOutlet weak var RichText: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //リッチテキストを設定
        setupRichContent()
    }
    
    func setupRichContent(){
        let attributedString = NSMutableAttributedString()
        
        //フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize:24)
        let bodyFont = UIFont.systemFont(ofSize:16)
        let maxWidth = view.bounds.width - 40
        
        //===タイトル===
        let title = "海と山\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        
            // === 文章 ===
            let text = """
「父祖の地を我らの拠点とする」
頼朝は青年時代を鎌倉周辺ですごし、清潔なこの環境を気にいっていました。
京都は劣悪な衛生状況で鴨長明が書いた方丈記には京都で疫病によって死んだものが４万人以上だと書いてあります。頼朝はそんな不衛生な京都の環境を嫌い、鎌倉に幕府を立てました。
山々と自然に囲まれ病気を入り込ませないような衛生的な場所で、眼前に広がる由比浜は砂が海に流れ出ており船で行くとたちまち浅瀬にのりあげ飛び降りた所を狙われてしまう地形です。そのため、敵は容易に入れない場所でもあったのです。



"""
        //===画像を輸入===
        if let image = UIImage(named: "山と海"){
            let attachment = NSTextAttachment()
            attachment.image = image
            
            //画像サイズを調整
            let ratio = maxWidth/image.size.width
            attachment.bounds = CGRect(x:0,y:0,
                                       width:maxWidth,
                                       height:image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        attributedString.append(NSAttributedString(
                string: text,
                attributes: [.font: bodyFont]
            ))
            
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    


    
    
    

