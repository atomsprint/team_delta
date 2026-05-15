//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class RekisiViewController: UIViewController {
    
            
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
        let title = "鎌倉文化\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文1===
        let text1 =  """


東京を知っていますか。東京は日本の中心です。実は東京のモデルは鎌倉だったのです。
東京の土台である江戸を築いた徳川家康は頼朝を尊敬し、頼朝が書いた吾妻鏡という本から学びつくりました。かつて日本の中心だった鎌倉を江戸の参考にしました。140年前江戸で起きた革命は血が流れませんでした。
フランス革命では革命派と、王党派の人に分かれ革命が起こりました。多くの人が亡くなり、王と王妃が殺されました。
権威と権力が同じ人に集まっていると社会を変えようとする時多くの人の血が流れることもあるようです。
権威と権力が分かれている国を作ったので革命が起きても日本の王様の天皇家は今でも続いています。
"""
        
        attributedString.append(NSAttributedString(
            string: text1,
            attributes:[.font:bodyFont]
        ))
        
        
        
        
        
        //===画像2を挿入===
        if let image = UIImage(named: "源頼朝") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        
        
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    


