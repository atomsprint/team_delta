//
//  UrgentViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/24.
//

import UIKit

class UrgentViewController: UIViewController {

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
        
        
    
        
        
        if let image = UIImage(named: "災害") {
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
        
        
        地震や大雨などの災害時は、近くの避難所へ避難してください。
        観光中でも、まずは安全な場所へ移動することが大切です。


        【警報・地震情報】
        天気や警報、地震などの情報は、下記から確認できます。
        ※「警報・注意報」「地震情報」などが見られます。
        https://www.jma.go.jp/bosai/#pattern=default&area_type=class20s&area_code=1420400

        
        【避難所の確認】
        鎌倉市が開設する避難所の状況は、「VACAN（バカン）」で確認できます。
        避難所の混み具合は、
        「空いています・やや混雑・混雑・満」の4つで表示されます。
        鎌倉市外の方も利用できます。
        鎌倉市内避難所の開設・混雑情報配信サービス「VACAN（バカン）」
        http://vacan.com/area/kamakura-city-evacuation/evacuation-center/12

        
        【帰宅がむずかしいとき】
        災害時には、帰宅がむずかしい方向けに、一時的に滞在できる施設が開設されることがあります。
        ※状況によって開設されない場合があります
        最新の情報は、避難所情報（VACAN）などで確認してください
        

        
        【緊急連絡先】
        緊急時は、落ち着いて下記の番号に連絡してください。
        ・警察：110
        ・救急・消防：119
        
        【避難するときの注意】
        ・海や川の近くにいる場合は、すぐに離れてください。
        ・揺れを感じたら、建物の外に出ず、安全な場所で身を守りましょう。
        ・落ち着いて、周りの案内や指示に従いましょう。
        ・津波の危険があるときは、警報を待たずに高い場所へ避難してください。
        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




