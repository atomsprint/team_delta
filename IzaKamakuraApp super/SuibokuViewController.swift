//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class SuibokuViewController: UIViewController {
    
    
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
        let title = "水墨画\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        
            // === 文章 ===
            let text = """
水墨画とは、水と墨と紙だけを使って自然の美しさを表す、日本の伝統的な絵です。墨のにじみやかすれ、濃さのちがいによって、山や水、風の流れなどが表現されます。大きな特徴は余白の美しさです。何も描かれていない空間が、風や光、水の流れを感じさせて、見る人の想像を広げてくれます。
北鎌倉の禅寺では、こうした水墨画の考え方が大切にされています。静かな空気の中で自然の景色を眺めていると、その景色そのものが水墨画のように感じられることもあります。

"""
            attributedString.append(NSAttributedString(
                string: text,
                attributes: [.font: bodyFont]
            ))
            
        //===画像を輸入===
        if let image = UIImage(named: "水墨画"){
            let attachment = NSTextAttachment()
            attachment.image = image
            
            //画像サイズを調整
            let ratio = maxWidth/image.size.width
            attachment.bounds = CGRect(x:0,y:0,
                                       width:maxWidth,
                                       height:image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }

            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    


    
    
    


