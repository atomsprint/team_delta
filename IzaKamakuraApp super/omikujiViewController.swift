//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class omikujiViewController: UIViewController {
    
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
        let title = "おみくじ\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===画像を輸入===
        if let image = UIImage(named: "おみくじ"){
            let attachment = NSTextAttachment()
            attachment.image = image
            
            //画像サイズを調整
            let ratio = maxWidth/image.size.width
            attachment.bounds = CGRect(x:0,y:0,
                                       width:maxWidth,
                                       height:image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
            // === 文章 ===
            let text = """
おみくじは、神社でひくことができる日本の伝統的な運勢占いの紙です。紙の中には、大吉・中吉・小吉・凶などの運勢や、これからの過ごし方のヒントが書かれています。
鶴岡八幡宮には、かわいい鳩みくじや開運みくじ、縁結びみくじなど、さまざまな種類のおみくじがあって、どれにしようか選ぶ時間も楽しいです。
もし良い結果でなくても、おみくじに書かれた言葉を大切にしながら過ごすことで、少しずつ良い方向へ向かうといわれています。
もし「凶」を引いても大丈夫。鶴岡八幡宮には「凶運みくじ納め箱」があり、おみくじを納めて「強運掴み矢」をにぎりながら願いごとをすると、凶運が強運へ変わるといわれています。
境内にはおみくじを結ぶ場所もあります。これは、よくない運勢をその場にとどめ、良い方向へ導いてもらうという願いが込められた習慣です。特に凶を引いた場合には、専用の場所に結びつけて帰る人が多いです。鎌倉に来た記念に、ぜひおみくじを引いてみてください

"""
 
        attributedString.append(NSAttributedString(
                string: text,
                attributes: [.font: bodyFont]
            ))
            
            
            
            
            //Apply to the text view
            RichText.attributedText = attributedString
            RichText.dataDetectorTypes = [.link]
        }
    }
    
    
    


    
    
    

