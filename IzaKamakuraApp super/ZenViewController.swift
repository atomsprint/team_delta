//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class ZenViewController: UIViewController {
    
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
        let title = "禅\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文===
        let text = """
禅とは心の別名です。ひとつにこだわらず、いろんなことに関心をもつけどとらわれない、自由自在な心をいいます。

釈迦という人が、インドのブッダガヤの菩提樹の下で坐禅を組み、悟りを開きました。
釈迦から数えて、二十八代目の弟子にあたる南インドの王子である達磨が釈迦の教えを元に修行して会得したのが「禅」という考え方です。
達磨は六世紀ごろに中国に行って禅を広めました。達磨は9年の間、壁に向かって仏教の経典に頼らず坐禅をすることで、悟りにたどり着きました。これを「面壁9年」といいます。

禅は日本は鎌倉時代に入ってきました。中国に留学した栄西が、日本で最初の禅宗となる臨済宗を開きました。　

密林の中で鳥の声を聞くと疲れた心が安らぐ」「水たまりに石が落ちた時にできる波紋をながめていると嫌な気持ちが消えていく」というような経験をしたことはありますか？
禅は座ること、止まることを大切にしています。
止まることで泥水が澄んでいくように、心が澄んでいきます。
坐禅は、忙しくて心を無くしている人が心を取り戻すような体験をすることができるのです。


　　　　
"""
        attributedString.append(NSAttributedString(
            string: text,
            attributes: [.font: bodyFont]
        ))
        //===画像を挿入===
        if let image = UIImage(named: "後ろ") {
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
