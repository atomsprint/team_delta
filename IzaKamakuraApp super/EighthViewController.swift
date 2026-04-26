//
//  EighthViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//

import UIKit

class EighthViewController: UIViewController {
    
   
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
       
        if let image = UIImage(named: "タケタケ") {
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
        
        
        ①コースに入ってからすぐに竹があり、風が吹くと竹と竹がぶつかり合う自然の音を聞くことができます。ぜひ耳をすませて聞いてみてください。



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "ヤマヤマ") {
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
        
        ②時々、海と山などが見える美しい景色があります。
        鎌倉の広々と広がる大きな海と歴史ある街、そして鎌倉幕府があえてこの地を選んだ海と山に囲まれた景色をぜひ見てみてください。

        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "いしいし") {
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
        
        
        ③葛原岡神社の「魔去る石」というものがあり、魔が去るように願いを込めて、盃（さかずき）を石に投げて幸せを勝ち取るそうです。一枚百円で、割るのがとても楽しかったのでぜひやってみてくださ
        い。


        """
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))
        
        if let image = UIImage(named: "ハイキング") {
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
        
        
        ◎　歩く時間　：約１時間３０分くらい

        ◎持ち物　　　：運動靴や登山靴がオススメ
        　　　　　　　　飲み物
        　　　　　　　　（葛原岡神社に自動販売機がある）
        　　　　　　　　軍手
        　　　　　　　　防寒具など
        　　　　　　　　
        ◎注意　　　　：岩などが所々あるので足元もみて歩くようにしましょう。
        　　　　　　　　雨の日などは足元がぬかるんでいるので、滑ったり転んだりしないように 　　　　　　　　気をつけてください。

        　　　　　　　　途中にロープを使う場面があります。ロープを使うと、手が汚くなるので　　　　　　　　手袋などをつけるか、すぐ隣の道を行った方が良いです。



        """
        attributedString.append(NSAttributedString(
            string: text4,
            attributes: [.font: bodyFont]
        ))
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

