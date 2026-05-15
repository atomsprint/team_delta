//
//  JinrikishaViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/19.
//

import UIKit

class JinrikishaViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "人力車") {
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
        
        
        鎌倉を観光するなら、人力車に乗るのもおすすめです。俥夫（しゃふ）さんがゆっくり走ってくれて、町の歴史や名所を分かりやすく説明してくれます。歩くより景色がよく見えて、風も気持ちいいです。寒い冬には足元が冷えないようにひざ掛けがあり、雨や暑く日差しが強い日には屋根がついていて、どんな季節でも楽しめます。
        人力車は 19世紀後半（明治時代のはじめ） に生まれたと言われている日本の伝統的な乗り物です。自動車がなかった時代に、移動手段としてとても人気がありました。今では観光用として、歴史ある町で乗れる特別な乗り物になっています。
        人力車の魅力は、ただ観光スポットを見るだけではなく、俥夫（しゃふ）さんと会話をしながら、ゆったりと町の歴史や文化を学べる、特別な体験ができるところです。コースも短いものから長いものまで選べるので、初めて鎌倉に行く人も自分のペースで楽しめます。ただ町を歩いているだけでは気づかないようなことを、感じて学べる特別な体験になります。

        えびす家 鎌倉
        住所：鎌倉市雪ノ下1-12-3
        料金：30分～
        　　　2名乗車：10,000円～
        　　　1名乗車：9,000円～
        言語：英語対応可能な人もいる

        HP：https://www.ebisuya.com/　　

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

