//
//  SixthViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//
import UIKit

class SixthViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "サーフィン") {
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
        
        
        鎌倉の海岸近く、江ノ電・長谷駅から歩いて1分の場所にあるサーフクラブでは、子どもから大人までサーフィンを楽しむことができます。
        レッスンでは、サーフボードやボディーボードを使い、その日の海の状態に合わせて練習します。サーフィンが初めての人でも、ベテランのインストラクターがやさしく教えてくれるので安心です。
        歴史ある街鎌倉で、海のスポーツに挑戦して波を感じる体験は特別です。
        サーフボードの貸し出しもあるので、事前に必ず問い合わせて予約してください。

        鎌倉サーフライダーズクラブ
        場所：神奈川県鎌倉市長谷２丁目１７−１ 
        料金：非会員向け
        ■プライベートレッスン（1時間 7,700円/1人）※2名以上で申し込み
        ■マンツーマンレッスン（1時間 12,000円） 　※マンツーマン
        言語：英語対応可能な人もいる
        HP：https://kamakurasurf.jp/
        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

