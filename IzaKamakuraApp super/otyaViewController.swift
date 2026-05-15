//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class otyaViewController: UIViewController {
    
            
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
        let title = "鎌倉文化"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文1===
        let text1 =  """
お茶はもともと薬で、お坊さんや武士など位のある人の飲み物でした。
鎌倉時代のお坊さん栄西が中国から持って帰ってきたお茶を広めました。
千利休さんが、農民も飲めるようにしたのです。

茶室は、ふつうの部屋とまるでちがいます。
入り口は茶室のなかを、広く思わせるために、入り口がとてもちいさくなっています。
はいるときには、刀をはずさないとだめなのです。
茶室のなかは位のある人も、みんな平等にお茶を飲む場所だからです。

茶室には、掛け軸や、生花、非対称の棚などがあります。
それは5感いっぱいに自然を感じられるようなはからいがあります。
これらの茶室の作りは、思いやりの心がこめられて作られたものです。

茶室で使う言葉の中で、特徴的な言葉があります。
それは、もう一服いかがですか？　という言葉です。
すでに、一服飲まれた人に次飲む人がこのように言葉をかけます。
お茶を出す人だけではなく、お茶を飲む人どうしも思いやりの心を言葉にして表します。

このように思いやりの心をもってもてなすふるまいを極める道を茶道といいます。現代まで数百年という長い時間をかけて作り上げられてきた日本の文化なのです。
"""
        
        attributedString.append(NSAttributedString(
            string: text1,
            attributes:[.font:bodyFont]
        ))
        
        
        
        
        
        //===画像を挿入===
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
    
    
    


