//
//  DaibutsuViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/29.
//

import UIKit

class DaibutsuViewController: UIViewController {
    
   
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
     

        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 17)
        let maxWidth = view.bounds.width - 40
        

        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        if let image = UIImage(named: "鎌倉大仏") {
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
        
        
        
        高徳院の境内にある国宝の阿弥陀如来坐像、通称鎌倉大仏（長谷大仏）。成り立ちなども含めて謎が多い大仏と言われています。当初は木造でしたが、鎌倉時代の建長4年(1252年)に現在と同じ金銅製の大仏の建造が始まりました。以前はお堂の中にあり、元々は金箔が貼られていたそうですが、『太平記』と『鎌倉大日記』によると1334(建武元) 年および1369(応安二) 年の台風、そして1498(明応七) 年の大地震による津波で相ついでお堂が流され、その後今の形で再建されました。
        　また、奈良の東大寺の大仏に対抗して建てられたと言われており、大きさは奈良の大仏の方が大きいですが、螺髪（大仏の頭にある渦を巻いた髪の毛）の数は656個と奈良の大仏の492個より多く、他にも鎌倉大仏ならではの特徴があります。外にある大仏だからこそ、春は桜、夏は青々とした木々、秋は紅葉、冬は雪景色と共に荘厳な景色を楽しめます。
        ◾️鎌倉大仏の特徴
        ・美男
        ・切れ長の目
        ・高い鼻
        ・手の形が上品上生印
        ・穏やかに結ばれた口
        ・肩に達するほどの福耳
        ・伏し目となるよう顔面と垂直に刻まれた目


        ◾️見るべきポイント
        ・大仏の表情
        ・金粉が貼ってあった頬にある名残
        ・大わらじ
        ・大仏の正面向かって右側から入れる胎内拝観もおすすめ。
        

        総高13.35m                面長2.35m               耳長1.90m　　　　　　　　螺髪直径0.24m         
        重量121.1t     　　　　  眼長1.00m            眉間白毫直径0.18m              螺髪数656個
        仏身高11.312m           口幅0.82m               螺髪高0.18m                        仏体重量121t



        



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "大仏顔") {
            let attachment = NSTextAttachment()
            attachment.image = image
            
            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)
            
            attributedString.append(NSAttributedString(attachment: attachment))
        }
        
        
        let text2 = """
        
        
        【観光情報】
        観光の目安時間：約15-30分
        御朱印：あり（秋には紅葉と金の大仏が描かれた特別御朱印がいただけます）


        【基本情報】
        住所：鎌倉市長谷4-2-28
        休館日：無休
        拝観時間：4-9月　8:00-17:30  10-3月　8:00-17:00（入場は閉門15分前まで）
        拝観料：一般・中高生300円　小学生150円　大仏胎内50円
        アクセス：江ノ電長谷寺駅より徒歩約12分
        https://www.kotoku-in.jp/index.php#guidance


        【近くの見どころ】
        長谷寺、由比ヶ浜、鎌倉文学館

        
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        
   
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
        Richtext.isEditable = false
        Richtext.isSelectable = true
    }
}


