//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class RongobusiViewController: UIViewController {
    
    @IBOutlet weak var RichText: UITextView!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //リチテキストを設定
        setupRichContent()
    }
    
    func setupRichContent(){
        let attributedString = NSMutableAttributedString()
        
        //フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize:24)
        let bodyFont = UIFont.systemFont(ofSize:16)
        let maxWidth = view.bounds.width - 40
        
        //===タイトル===
        let title = "論語と武士の関係\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        
            // === 文章 ===
            let text = """


上杉謙信は上杉憲政の後をついで、鎌倉の鶴岡八幡宮で、関東管領に就任した鎌倉にゆかりのある人物です。
上杉謙信とその師、天室光育の会話にこんな一文あります。
「人は一度学べば、もうそれで分かったような気がするものです。
しかし本当によく分かったのかどうか......ここに復習、練習の意味があります。
繰り返しことによって、学問も馬術、槍術も、体得することが出来るわけです。
その体得の喜びこそが、学ぶことのまことの喜びなのですぞ」と、本に書いてあります。
何回も学問を練習、復習をしていけば、自然と我が知識となるのです。武士はこのように徹底して頭脳も身体も鍛えることをしていきました。上杉謙信は論語を暗記していたそうです。論語は長い間、日本人の教養を養う教育だったのです。



"""
        //===画像を輸入===
        if let image = UIImage(named: "上杉謙信"){
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
    
    
    


    
    
    

