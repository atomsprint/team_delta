//
//  ThierteenthViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/19.
//

import UIKit

class ThierteenthViewController: UIViewController {
    
   
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 18)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
       
        if let image = UIImage(named: "センス広げる") {
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
        
        
        ①お椀を回してからいただく理由
        茶道では、お椀の絵柄を次の人に見せ
        るため、飲む前にお椀を回します。
        これは相手への敬意を表す日本ならで
        はの心遣いです。


        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "センス") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        
        let text2 = """
        
        
        ②扇子が示す「間」の文化
        挨拶の際、閉じた扇子を前に置くこと
        で相手との境界を示します。これは日本文化が大切にしてきた
        ”適切な距離感”を表す所作で、男性と女性では扇子の大きさも異なります。

        
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "お茶立てる") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        let text3 = """
        
        
        ③和菓子とともに楽しむ茶の湯
        お茶と一緒に和菓子も楽しめます。和
        菓子には細やかなマナーがあり、その
        所作には相手を思いやる心が込められ
        てます。日本文化の奥深さを感じら
        れるひとときです。
        

        """
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))
        
        if let image = UIImage(named: "茶道のチーズ") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        let text4 = """
        
        
        ◎曜日　：毎曜日

        ◎時間　：一時間30分くらい

        ◎場所　：NOA茶道教室

        ◎申し込み　：WEBまたはお電話にて（9:00~17:30まで）
        　　　　　　　0467-73-9001

        ◎費用　：今は4400→3300円

        ◎公式HP　：https://www.noasado.com/kitakamakura/

        ◎住所　：〒247-0062 神奈川県鎌倉市山ノ内857-1



        ＜注意＞
        ・当日はレッスン開始時間の15分ほど前に来て受付してください。


        """
        attributedString.append(NSAttributedString(
            string: text4,
            attributes: [.font: bodyFont]
        ))
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

