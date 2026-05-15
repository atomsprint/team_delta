//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class ZeniaraiViewController: UIViewController {
    
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 17)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        if let image = UIImage(named: "銭洗") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        
        let text1 = """
        
        巳の年(1185年、文治元年)、巳の月、巳の日の夜、源頼朝の夢に1人の老人が出てきて「ここから西北の方に一つの谷があり、きれいな泉が岩の間から湧き出ている。今後この水を汲んでずっと神仏を供養せよ。自分はここの主の宇賀福神である。」と言って姿を消しました。夢からさめた頼朝がこの夢をもとに神社を作ったのが銭洗弁財天宇賀福神社の始まりです。その後、北条時頼も宇賀福神を敬い、自分のお金を洗い清めたので、それを人々もまねし、いつしか銭洗の水としてご利益があると信じて今もお金を洗うようになりました。


        【観光情報】
        観光の目安時間：15分程度


        【基本情報】
        住所：鎌倉市佐助2-25-16        
        休館日：無休
        拝観時間：8:00-16:30
        拝観料：志納
        アクセス：JR鎌倉駅西口から徒歩25分


        【近くの見どころ】
        浄智寺、佐助稲荷神社

        



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
        Richtext.isEditable = false
        Richtext.isSelectable = true
    }
}


