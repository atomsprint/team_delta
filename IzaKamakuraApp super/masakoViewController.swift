//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class masakoViewController: UIViewController {
    
    
    
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
        let title = "北条政子\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文===
        let text = """


第一代執権北条時政の子供、第二執権北条義時の姉で頼朝の奥さん。　
怠け者だった子どもの頼家を殺して、次男の実朝を将軍にした。
しかし頼家の子の公卿が殺してしまいました。
北条時政と牧の方（かた）が実朝暗殺を企んで平賀朝政を将軍にしようとしたので、政子は彼らを追放した。しかし、実朝が殺されたので、その後三寅（みとら）を表に立てて、裏で執権をとる尼将軍になった。
その後、承久の乱が起こり、そこで武士の結束を固めた政子の決定的な言葉があります。
「みな、心をひとつにして私の最後の言葉を聞きなさい。
むかし、東国の武士たちは、宮づかえとして、はだしで、京にのぼりました。
されど、頼朝様が鎌倉をたてられたのちは、宮づかえもやみました。
官位といい、俸禄といい、頼朝様のご恩は山よりも高く、海よりも深い。
それが今逆臣の讒言によって、あらぬ臨時が下されています。
京のうひずめにかけられてはなりませぬ。」
そこで政子はいちだんと声を高くして、涙ながらに告げ、「宣旨にしたがいたい者は、まずこの尼を殺し、鎌倉を焼きはらってからいくがよいぞ！」
と、並々ならない覚悟の女性の声が多くの武士の心を揺さぶったのです。


　　　　
"""
        attributedString.append(NSAttributedString(
            string: text,
            attributes: [.font: bodyFont]
        ))
        
        
        //===画像を挿入===
        if let image = UIImage(named: "ツツジ") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
            
            
            //===本文2===
            let text2 = """
                北条政子ゆかりの寺に咲く花がツツジである。
                """
            attributedString.append(NSAttributedString(
                string: text2,
                attributes: [.font: bodyFont]
            ))
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    
    
    
    
    
    
    
}
