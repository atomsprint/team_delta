//
//  SeventhViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//

import UIKit

class SeventhViewController: UIViewController {
    
   
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
        
        if let image = UIImage(named: "水墨画龍") {
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
        
        
        水墨画とは、水と墨と紙だけを使って自然の美しさを表す、日本の伝統的な絵です。墨のにじみやかすれ、濃さのちがいによって、山や水、風の流れなどが表現されます。大きな特徴は余白の美しさです。何も描かれていない空間が、風や光、水の流れを感じさせて、見る人の想像を広げてくれます。
        北鎌倉の禅寺では、こうした水墨画の考え方が大切にされています。静かな空気の中で自然の景色を眺めていると、その景色そのものが水墨画のように感じられることもあります。



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
      
        
        
       
    
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

