//
//  FourteenthViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/28.
//

import UIKit

class FourteenthViewController: UIViewController {

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
        
        if let image = UIImage(named: "妙な寺だな〜") {
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
        
        
        妙本寺はたくさんの緑の自然に囲まれた日蓮聖人という日蓮宗を確立した僧侶を開山にあおぐ日蓮宗最古の寺院の一つです。ぜひご覧ください。

        【見どころ・おすすめの場所】
        ・二天門
        鮮やかな朱塗りの外観で、通称二天門にある２頭の龍の彫刻は、「飛龍」と呼ばれる翼をもつ非常に珍しい姿をしているのが特徴です。次に紹介する祖師堂にも龍の彫刻があるので二天門の飛龍と見比べてみるのもオススメです。


        ・祖師堂
        境内の中心にある祖師堂は、鎌倉最大級の木造仏堂建築です。前の庭にはソメイシノや枝れ桜、カイドウが植えられており、春には歴史ある建築と花などの自然を学べるれており、春には歴史ある建築と花などの自然を学べる場にもなっています。


        ・蛇形の井
        約800年ほど前この地で将軍の側近として絶大な力を誇った比比企一族は、ライバルの北条氏と権力争いをしていました。しかし比企一族はこの戦いに敗れ、この地で滅ぼされました。比企一族の女性の若狭局が一族が攻められた際、家宝を抱えてこの井戸に身を投げ、自害したと伝えられています。若狭局の死後、彼女は大蛇に化身して、井戸の底で家宝を守り続けているという伝説が生まれています。ぜひ見てみてください。
        
        【基本情報】
        費用　：志納
        公式HP　：https://www.myohonji.or.jp/
        住所　：〒248-0007 神奈川県鎌倉市大町1-15-1
        　　　　JR東日本 横須賀線鎌倉駅から徒歩8分
        　　　　鎌倉駅から徒歩10分

                                                                                                        

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        
        
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
        Richtext.isEditable = false
        Richtext.isSelectable = true
    }
}


