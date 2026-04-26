//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class AzumaViewController: UIViewController {
    
    
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
        let title = "吾妻鏡"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        
            // === 文章 ===
            let text = """
            

吾妻鏡は鎌倉幕府初代将軍源頼朝から、第六代皇族将軍宗尊親王までの鎌倉幕府の歴史が書いてある。徳川家康が東京に江戸幕府を建てる時に参考にした書物。三代将軍からは、政権を北条氏がとってかわった。北条氏は源氏ではないため将軍になれないので源氏の一族を次々に将軍にして政権をとっていた。
鴨長明と、頼朝が会った記録はないが、鴨長明は頼朝のことを思っていたことがわかる。

源氏一族は、代々和歌がうまかった。
中でも、源三位頼政は弓矢の名人でもあり、和歌の道も優れていた。
頼政は、元々天上人ではなかったが、歌の中に四位になりたいということをふくみ、かなった。またそして、三位になりたいという欲がでてきた。それで、こんな歌を作った。
『私は、いつまでも四位なのですが、どうにかして三位になれないでしょうか。』
という意味の歌をつくりました。このように、和歌で出世をするほど優れていて、教養があったのです。


"""
        //===画像を輸入===
        if let image = UIImage(named: "吾妻鏡"){
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
    
    
    


    
    
    

