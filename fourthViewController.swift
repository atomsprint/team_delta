//
//  fourthViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//

import UIKit

class fourthViewController: UIViewController {
    
   
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
        
        if let image = UIImage(named: "鶴岡八幡宮") {
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
        
        
        if let image = UIImage(named: "さざれ石") {
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
        
        
        □イチョウの木
        鶴岡八幡宮には樹齢約1000年の大きなイチョウの木があります。2010年に強風で倒れましたが今はまた生えてきていてのびのびと生きています。この木は900年以上も前にあった3代目将軍、源実朝の暗殺された事件を見ています。このイチョウの木はたくさんの歴史を見ていて私たちが知らない歴史もしっているかもしれません。

        
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
        if let image = UIImage(named: "HEIWA") {
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
        
        
                □白い鳩
                境内には池があり、そこにはたくさんの白い鳩がいます。
                この白い鳩は八幡神(応神天皇)を助けた「神の使い」として信仰されています。平和のシンボルでもあり、見かけると縁起が良いとされ、境内に社殿の「八」の字が鳩の形をしているなど、至る所にそのモチーフが見られるので探してみてください。

        
        """
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "鶴岡地図") {
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
        
        費用    :宝物殿は大人200円、高校生以下100円
        公式HP:https://www.hachimangu.or.jp/
        住所    :神奈川県鎌倉市雪ノ下2-1-31
        　　　　「JR鎌倉駅」東口から徒歩10分

        """
        attributedString.append(NSAttributedString(
            string: text4,
            attributes: [.font: bodyFont]
        ))
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
        Richtext.isEditable = false
        Richtext.isSelectable = true
    }
}


