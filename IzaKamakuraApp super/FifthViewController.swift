//
//  FifthViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//

import UIKit

class FifthViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "自転車") {
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
        
        
        鎌倉には観光客向けのレンタサイクルのお店がたくさんあります。駅の近くや観光スポットのそばで、自転車を借りることができます。料金も1日使えるものから、時間ごとのプランまでいろいろあります。
        レンタサイクルで観光する魅力は、歩くより早く、でも車よりゆっくり街を回れるところです。江ノ電やバスでは行きにくい小さな神社やお寺、海のそばまで、自分のペースで行けます。道を選びながら景色を楽しんだり、自然や町の雰囲気をより近くで感じられるのも、自転車ならではの魅力です。
        特に鎌倉は歴史ある町並みや海、山も近いので、自転車で回るとたくさんの景色を一度に楽しめます。
        鎌倉にはおいしいパン屋さんがあるので、観光の合間に自転車でパン屋巡りをするのも楽しいです。
        休日は江ノ電がとても混雑するので、手軽な料金で借りられるレンタサイクルは便利です。鎌倉駅前店では有料で手荷物を預けられるサービスもあるので、スーツケースを持っていても安心です。
        自分のペースで巡る自転車の旅は、忘れられない特別な思い出を作ることができるので、とてもおすすめです。


        レンタサイクル鎌倉駅前店
        場所：神奈川県鎌倉市長谷２丁目１７−１ 
        電話：0467-24-2319
        時間：8時30分～17時00分​（季節により営業時間がちがいます）
        料金： 1日(4時間以上～営業時間まで)　1,200円
        HP：https://www.jrbustech.co.jp/wp/shop_service
        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

