//
//  CoinrockerViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/20.
//

import UIKit

class CoinrockrerViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "コインロッカー") {
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
        
        
        大きな荷物は預けて、身軽に観光を楽しみましょう。
        長谷駅周辺はロッカーが少なく、空いていないことが多いです。
        長谷・大仏方面や北鎌倉へ行く前に、鎌倉駅で荷物を預けておくと安心です。
        週末や観光シーズンは、コインロッカーは午前中に埋まりやすいので、空き状況の確認もご確認ください。


        【場所】
        鎌倉駅には、改札内・改札外にコインロッカーがあります。
        空き状況や場所は、下記のサイトから確認できます。
        鎌倉駅周辺のコインロッカー空き状況
        https://multiecube.com/station/86

        
        【主な設置場所】
        ■改札内
        ・JR鎌倉駅 東口付近（うどん店の隣）
        ・JR鎌倉駅 西口付近（江ノ電改札手前）
        ・江ノ電 鎌倉駅構内

        
        ■改札外
        ・東口を出て左手すぐ（みずほ銀行ATM前）
        ・東口を出て右手すぐ（交番横）
        ・西口を出てすぐ（JR改札の左側）
        ・あいざ鎌倉（3階）
        https://i-za-kamakura.com/shop/coinlocker/

        
        【料金の目安】
        ロッカーの場所やサービスにより料金は異なります
        ・小型：300～800円程度
        ・中型：500～1,100円程度
        ・大型：700～1,300円程度
        ※現金・ICカード対応（場所により異なります）

        
        【大型荷物・配送】
        コインロッカーが満室の場合や、大型のスーツケースが入らない場合は、鎌倉駅西口すぐの荷物預かりサービスを利用できます。

        【鎌倉市観光協会 手荷物預かりサービス】
        ・荷物取扱時間：9:00～17:00
        　営業時間を過ぎると当日の受け取りはできず、翌日以降の返却となります
        ・場所：鎌倉市御成町1-12江ノ電ビル4F
        　　　　鎌倉市観光協会事務局
        ・電話：0467-23-3050
        ・定休日：年末年始
        ・公式HP：https://www.trip-kamakura.com/special/detail.php?id=21
        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




