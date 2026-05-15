//
//  TrainViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/24.
//

import UIKit

class TrainViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "電車の運行状況") {
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
        
        
        ■鉄道
        JR東日本
        https://www.jreast.co.jp/
        江ノ島電鉄
        https://www.enoden.co.jp/
        湘南モノレール
        http://www.shonan-monorail.co.jp/
        京急電鉄
        http://www.keikyu.co.jp/
        
        ■バス
        江ノ電バス
        https://www.enoden.co.jp/bus/
        京浜急行バス
        http://www.keikyu-bus.co.jp/
        神奈川中央交通
        https://www.kanachu.co.jp/index.html

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




