//
//  KamakuraboriViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/23.
//

import UIKit

class KamakuraboriViewController: UIViewController {
    
   
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 18)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        
    
        
        
        if let image = UIImage(named: "鎌倉彫仮") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        
        let text1 = """
        
        
        使い込むほど美しい、鎌倉時代から受継がれる技
        鎌倉彫とは、桂や銀杏などの木をお盆や皿に成形し、文様を彫り、その上に漆を塗って仕上げた工芸品で、鎌倉市とその周辺で作られたものを言います。
         鎌倉時代、中国の宋から禅宗とともに伝来した漆を何層も重ねたものに模様を施した堆朱や堆黒といった工芸品の影響を受けましたが、堆朱や堆黒のような漆を何層にも重ねた漆器を彫るのではなく模様を彫ったお皿に漆を塗るという日本独自の方法へと発展させたものが鎌倉彫の始まりです。
        表面に彫跡を意識的につける刀痕が特徴で、主に寺院での仏具・法具・宮大工・僧侶といった人々を中心に、技法が受け継がれてきたと考えられています。他の漆器と同様、使い込むほどに艶が深まります。

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




