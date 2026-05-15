//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class KaresanViewController: UIViewController {
    
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
        let title = "枯山水\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文===
        let text = """
        
枯山水は、水を使わずに岩や小石、砂利だけで自然の風景を表現する日本庭園です。禅の考えかたを大切にしていて、静かな心で景色を味わうための空間でもあります。
砂の上におかれた岩は山や島を表していて、見る人によってさまざまな風景を想像できます。小さな庭の中に、宇宙が広がっているようです。
枯山水では、砂利をならして、波のような模様が描かれます。この模様は水の流れや海の広がりを表しているといわれています。
報国寺では、アーティストとしても活動しているお坊さんが、毎朝庭を整えています。人の手で描かれる砂の模様は、その日その時だけの特別な景色です。訪れるたびに少しずつちがう庭の表情を見ることができるのも、枯山水の魅力です。
町中のにぎやかさから離れた静かなお寺の中で、枯山水をゆっくりと眺める時間は、小さな瞑想のような体験です。鎌倉で心を整えるひとときを過ごしてみてください。


　　　　
"""
        attributedString.append(NSAttributedString(
            string: text,
            attributes: [.font: bodyFont]
        ))
        //===画像を挿入===
        if let image = UIImage(named: "枯山水") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
            
            
            
            
            
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    
    
    
    
    
    
    
}
