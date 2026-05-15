
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
            

今から約70年前鶴岡八幡宮の裏山・御谷で、一般市民・学者・僧侶が住宅を増やそうとする市の動きをおさえました。わずか一週間で２万を超える署名を持って反対運動をし、八幡宮供僧二十五坊遺跡で鎌倉の歴史上重要な場所である御谷の自然を守りました。この運動をきっかけに歴史的風土を守ることを目的とした「古都保存法」という法律がつくられました。



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
