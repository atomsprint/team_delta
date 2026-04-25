//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class EleventhViewController: UIViewController {
    
   
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 16)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        if let image = UIImage(named: "本本本覚寺") {
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
        
        
        鎌倉の海から一直線にある鶴岡八幡宮。そこから見る景色はとても美しく、海までの素晴らしい景色を見ることができます。


        〈見どころ・おすすめの場所〉
        □さざれ石
        日本の国家でもうたわれているさざれ石。さざれ石は、小さな石がたくさん集まって大きな石になります。日本人は一人一人が集まって強く大きな力になります。この日本の思い　と誇りが詰まったさざれ石を武士が生まれた鎌倉でぜひみてみませんか。



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "にぎにぎ福") {
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
        
        
        □駅に近い
        本覚寺は鎌倉駅に近く、アクセスがとても便利です。近くには色々なご飯屋さんやカフェ、お土産屋さんなどもあり観光がとても楽しくなります。それに有名な鶴岡八幡宮などもあり鎌倉の歴史などを体験することができます。


        〈歴史〉
        本覚寺は日蓮宗を作った日蓮が滞在していたお寺です。蓮宗はだれでも信仰しやすく簡単で鎌倉時代にはやりました。日蓮は他の宗教を強く批判し幕府へ新しい政治を書いた本を提出し、この世の中を仏の世界にしようとしたため禅圧や流罪を経験しながら生涯信念を貫いた僧です。日蓮が開いた日蓮宗は今も活動していて全国にもたくさんの日蓮宗のお寺があります。


        
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
        if let image = UIImage(named: "本覚寺のチーズ") {
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
        
        
        費用 :志納
        公式HP :https://www.hachimangu.or.jp/
        住所 :鎌倉市小町1-12-1 「JR鎌倉駅」東口から徒歩5分


        
        """
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))
        
        
        
        
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
        Richtext.isEditable = false
        Richtext.isSelectable = true
    }
}


