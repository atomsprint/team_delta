//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class HasederaViewController: UIViewController {
    
    
    @IBOutlet weak var RichText: UITextView!
    
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
        
        if let image = UIImage(named: "なごみ地蔵") {
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
        
        海を眺めることができ、四季を通じて様々な花を楽しめるお寺
        かわいい「なごみ地蔵」や洞窟は必見
        
        【基本情報】
        
        ・体験
        写経9:00〜13:00
        毎日自由に写経、写仏ができる
        道具のレンタルあり
        各一部1200円

        ・拝観
        受付時間8:00〜17:00
        大人400円、小学生200円　（支払いは
        ペット入山はできないが、専用のキャリーケースに入れる場合のみOK
        駐車場30分350円　全面禁煙

        ・アクセス
        JR横須賀線　鎌倉駅下車　徒歩5分
        江ノ電長谷駅　徒歩5分
        車　横須賀道から朝比奈IC下車　県道204号にて30分
        
        ・食事ができる場所
        てらやカフェ
        お食事処　海光庵
        
        https://www.hasedera.jp
        
        




        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        
        
        RichText.attributedText = attributedString
        RichText.dataDetectorTypes = [.link]
        RichText.isEditable = false
        RichText.isSelectable = true
    }
}


