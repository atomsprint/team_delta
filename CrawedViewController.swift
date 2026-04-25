//
//  CrawedViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/24.
//

import UIKit

class CrawedViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "混雑") {
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
        
        
        鎌倉市内の主な観光スポットの混雑状況を確認できます。
        観光地ごとの混み具合が色で表示されていて、
        今の混雑状況とこれからの混雑予想も見ることができます。
        なるべく混雑を避けて、快適に観光したい方におすすめです。
        鎌倉市観光混雑マップ
        https://konzatsu-kamakura.jp

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




