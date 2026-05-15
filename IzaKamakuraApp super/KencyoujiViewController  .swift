//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class KencyoujiViewController: UIViewController {
    
    
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
        
        if let image = UIImage(named: "建長寺") {
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
        
        
        円覚寺には、無学祖元という、人の坐像があります。その人は、建長寺にいる蘭渓道隆の愛弟子が無学祖元なのです。

        【基本情報】
        ・拝観
        受付時間：8:30〜16:30
        拝観料：大人500円　少人200円（支払いは現金のみ）

        ・アクセス
        JR横須賀線　「北鎌倉」駅よりバス5分（江ノ電バス鎌倉駅行き建長寺下車）
        または徒歩15分
        JR横須賀線　「鎌倉」駅よりばす10分（江ノ電バス各種「大船方面」行き建長寺下車）
        または徒歩30分
        車
        横浜横須賀道「朝比奈IC」から県どう204号→県道21号線道なりやく20分
        駐車場時間　8:30〜16:30　予約不可
        利用料　600円

        ・公式HP
        https://www.kenchoji.com/about



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


