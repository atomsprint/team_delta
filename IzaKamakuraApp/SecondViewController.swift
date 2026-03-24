//
//  SecondViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/01/10.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Richtext: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRichContent()
    }

    private func setupRichContent() {
        let attributedString = NSMutableAttributedString()

        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 16)
        let maxWidth = view.bounds.width - 40

        // === タイトル ===
        let title = """
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))

        let text1 = """
        報国寺は、鎌倉の東エリアにある臨済宗建長寺派の禅寺。
        境内の美しい竹林で有名で、約2,000本以上の竹が立ち並び、
        「竹庭の寺」とも呼ばれています。
        山門から本堂まで参道や竹林の中に「苔」が生えています。
        特に雨上がりには青々とした苔が美しく、雨の日にも楽しめるお寺です。
        竹林の奥には、茶席の「休耕庵」があり、竹に囲まれながら抹茶と和菓子を
        楽しめます。
        鎌倉には多くの文豪が住んでいましたが、近代はノーベル文学賞を受賞した川端康成などの鎌倉文士が、この近くに住んでいました。
        竹林を抜けると、目の前の岩肌にやぐらがあります。鯉が泳ぐ池の隣には、枯山水の庭園があり、四季折々の花が楽しめます。

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))

        if let image = UIImage(named: "報国寺竹林") {
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
        足利家とゆかりの深い寺で、足利尊氏の祖父・家時によって1334年に建てられたお寺です。室町幕府と深い関係を持ち、禅文化の中心的な存在の一つとなりました。

        【体験】（体験にリンクできるようにする）
        ■座禅
        報国寺は、ただの観光地ではなく、本格的な禅修行の場でもあります。毎月第2・第4日曜には、一般参加ができる「坐禅体験」が行われており、禅に触れる貴重な時間を過ごせます。

        ■休耕庵
        竹の庭を眺めながらお抹茶と和菓子を楽しめます。静かな禅の空間で、岩場を流れる水音や鳥のさえずりを聴きながら、心を落ち着ける時間を過ごせます。
        ＊入館時に600円の抹茶券チケットを購入（ラストオーダー : 15:30）

        """
        if let image = UIImage(named: "こけ") {
            let attachment = NSTextAttachment()
            attachment.image = image

            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)

            attributedString.append(NSAttributedString(attachment: attachment))
        }

        let text3 = """
        【開いている時間】
        9時から16時まで
        入園料　高校生以上：400円
        小中学校以下：200円
        抹茶を飲むには、入館時に600円のチケットを購入する

         【アクセス】
        住所：神奈川県鎌倉市浄明寺2-7-4
        JR「鎌倉駅」東口からバス約10分 →「浄明寺」下車 徒歩3分
        鎌倉駅から徒歩約30分

        【公式HPのリンク】
        https://houkokuji.or.jp

        【近くの見どころ】
        鶴岡八幡宮・浄明寺・瑞泉寺
        """

        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))

        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))

        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = UIDataDetectorTypes.link
    }
}

