//
//  SiryoukanViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/23.
//

import UIKit

class SiryoukanViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "鎌倉彫資料館") {
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
        
        
        場所：神奈川県鎌倉市小町2-15-13
        電話：0467-25-1502
        講習日、時間：第１・第４土曜日　10:00～12:00最終受付で所要時間90-120分
        　　　　※予約不要、先着20名
        料金：大人4,500円　小中学生3,500円
        　　　※漆塗りをする場合は別途料金がかかります
        言語：日本語
        HP：https://kamakuraborikaikan.jp/museum/educational/taiken-individual/
        ※6名以上の団体で水〜日の10-12時もしくは13-15時で予約可能


        小学生の感想
        職人の方の仕事を鎌倉彫のHPで事前に見た時は、簡単に彫り進めているように見えて自分にもできそうと思っていたが、実際やってみると彫刻刀を使ってきれいに模様を彫っていくのが難しかった。今回は彫りの体験だったので、漆を塗っていただき、使うのが楽しみだ。
        中国から伝わってきた技術を日本独自のものに発展させた鎌倉時代の人たち、そしてそれを受け継いできたことがすごいなと思った。


        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




