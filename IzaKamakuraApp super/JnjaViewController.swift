//
//  ViewController.swift
//  bunka
//
//  Created by 樋口 賢一 on 2026/04/18.
//

import UIKit

class JnjaViewController: UIViewController {
    
            
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
        let title = "神社仏閣の参拝マナー\n\n"
        attributedString.append(NSAttributedString(
            string: title,
            attributes:[.font:titleFont]
        ))
        
        //===本文1===
        let text1 =  """
神社やお寺は、昔から人々が祈りや感謝の気持ちを大切にしてきた場所です。
参拝の作法には、日本の文化や自然を大切にする敬意が表されています。
神社の入口にある鳥居は、神様の世界と日常の世界を分ける境界と考えられてきました。鳥居をくぐる前に軽く一礼をするのは、神様の場所へ入る気持ちを表すためです。
参道の中央は神様が通る道とされ、真ん中をさけて、その両側を歩くのがよいと伝えられています。手水舎で手や口を清めるのは、体だけでなく心も整えてお参りをする準備の意味があります。
お寺や神社の境内では、大きな声で話したり、食べ歩きをしたりすることはマナー違反です。
写真撮影ができない場所もあるため、案内表示を確認するようにしましょう。


"""
        attributedString.append(NSAttributedString(
            string: text1,
            attributes:[.font:bodyFont]
        ))
        
        
        //===画像を挿入===
        if let image = UIImage(named: "神社") {
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
    
    
    

