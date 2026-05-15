//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class EnkakujiViewController: UIViewController {
    
    
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
        
        if let image = UIImage(named: "円覚寺") {
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
        ・拝観時間
        3月～11月 午前8:30～午後4:30
        12月～2月 午前8:30～午後4:00
        ・拝観料
        大人　　500円（高校生以上）
        小人　　200円（小中学生）
        ◎カメラの三脚、一脚は使用禁止です。
        ◎樹木や杭、柱などに寄りかかって撮影しないでください。
        ◎境内での写生・スケッチ等は禁止です。
        ・アクセス
        電車
        東京/横浜より：JR横須賀線「北鎌倉駅」下車徒歩1分
        バス
        鎌倉駅発江ノ電バス「大船駅行」、「上大岡駅行」または「本郷台駅」行き「北鎌倉駅」バス停下車徒歩1分
        円覚寺には写経会など、イベントがあります。

        公式HP https://www.engakuji.or.jp/access/




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


