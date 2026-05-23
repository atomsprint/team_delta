
//  KyusuiViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/05/02.
//

import UIKit

class OyatuViewController: UIViewController {
    
    
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
      let title = ""
      attributedString.append(NSAttributedString(
          string: title,
          attributes:[.font:titleFont]
      ))
      
      
      if let image = UIImage(named: "おやつ騒動"){
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
            

今から約70年前、鶴岡八幡宮の裏山がある御谷では、住宅開発が進み、山や自然が次々と失われていました。

そんな中、「鎌倉の自然や歴史を守りたい」と声を上げた市民の行動をきっかけに、自然を守る運動が広がっていきました。鎌倉在住の作家、大佛次郎や川端康成、文芸評論家の小林秀雄など、多くの著名人も参加し、市民運動を後押ししました。  
わずか一週間で２万を超える署名が集まり、鎌倉の歴史上重要な場所である御谷の自然を守りました。  

鎌倉で始まったこの運動は、京都や奈良にも広がり、1966年に「古都保存法」が制定されました。これは、市民の声が国を動かした、日本でも早い時期の市民運動の一つとして知られています。  

今私たちが見ている鎌倉の豊かな自然や景色は、当たり前に残っていたものではなく、「未来へ残したい」と願った多くの市民の行動によって守られてきたものなのです。鎌倉の風致を守るという熱い思いが、今も受け継がれています。



"""
      
      attributedString.append(NSAttributedString(
              string: text,
              attributes: [.font: bodyFont]
          ))
       

            
            
            
            
      RichText.attributedText = attributedString
      RichText.dataDetectorTypes = [.link]
      RichText.isEditable = false
      RichText.isSelectable = true
        }
    }
