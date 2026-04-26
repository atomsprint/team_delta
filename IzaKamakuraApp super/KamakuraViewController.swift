//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class KamakuraViewController: UIViewController {
    
    
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
        let title = "鎌倉の成り立ち\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        
            // === 文章 ===
            let text = """


日本の政治の中心は、12世紀の終わりごろまで奈良や京都にありました。源頼朝は、武士による新しい政治の拠点として鎌倉に幕府を開き、日本ではじめて武士が中心となる政治が始まりました。
当時の天皇は京都におられたため、日本の首都は京都のままでした。鎌倉は、将軍や武士たちが政治を行った「幕府」の中心地だったのです。
鎌倉には、大仏や長谷観音、禅寺など多くの歴史あるお寺があり、海と山に囲まれた自然豊かな町として知られています。今では、歴史や文化、静かな景色を楽しみに、世界中から多くの人が訪れる人気の観光地になっています。


"""
        //===画像を輸入===
        if let image = UIImage(named: "鎌倉の成り立ち"){
            let attachment = NSTextAttachment()
            attachment.image = image
            
            //画像サイズを調整
            let ratio = maxWidth/image.size.width
            attachment.bounds = CGRect(x:0,y:0,
                                       width:maxWidth,
                                       height:image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        attributedString.append(NSAttributedString(
                string: text,
                attributes: [.font: bodyFont]
            ))
            
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    


    
    
    

