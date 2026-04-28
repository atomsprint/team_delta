//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class TokeijiViewController: UIViewController {
    
    
    @IBOutlet weak var RichText: UITextView!
    
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
        
        if let image = UIImage(named: "東慶寺") {
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
        
        四季折々の花が美しい、写経や茶道、生花などの体験ができるお寺
        
        　【基本情報】
        住所：〒247-0062　神奈川県鎌倉市山ノ内1367
        アクセス：JR横須賀線 北鎌倉駅 徒歩4分
        駐車場はありません。
        電話： 0467-22-1663 / Fax. 0467-22-7815
        参拝時間:：9:00〜16:00
        （第1、3火曜日は宝物館休館）
        拝観料はいただいておりませんが、必ず本尊を参拝し、お賽銭をお供えください
        公式HP　https://tokeiji.com/
        
        【体験情報】
        ・論語塾　
        曜日:毎月第１日曜日（毎年8月は休会）
        時間:9：00
        有志による作務（掃除・会場準備）
        作務終了次第、茶礼
        10：20　読経・坐禅
        10：30　安岡先生による論語塾
        11：30　論語塾終了

        参加費:おひとり（年齢問わず）　1,000円
        対象:親子（家族）を対象にしておりますので、社会人のみでの参加はご遠慮ください。
        持ち物:テキストはお寺でお買い求めいただけます。
        注意:小学生以下のお子様は保護者同伴でご参加ください。
        その他:お申し込みはひと月ごとにお願いいたします。

        
        ・写経
        時間:9:00〜14:00（正午受付終了）
        日程:第1、3火曜日定休
        （第3火曜日が18日観音縁日の場合は開催いたします）
        ＜5名以上13名以下の団体＞
        ・要予約　・13時以降で受付、実施。
        急遽お休みをいただくことがあります。参加直前に必ず日程をご確認ください。

        場所:白蓮舎
        志納金おひとり（写経1枚につき）　1,500円
        ・筆は持ち込み、もしくは購入も可能。（1本500円）
        ・納経された方には、納経証明としての御朱印をお授けしています。

        ・月釜
        日程
        毎月第3日曜日（８月休会）　9時～15時
        会費　3,000円
        ※事前振込

        持ち物
        ・懐紙と菓子切りは各自ご用意ください。（貸出はしておりません）
        ・洋服での参加の場合、白い靴下をお持ちください。


        ・生花（仮）    

        曜日：偶数月第4土曜日
        時間：10:30〜12:00
        場所：白蓮舎
        参加費：5,500円（消費税・花材費込）
        生けたお花は持ち帰ることができます。
        定員：12名
        持ち物：特にありません。
        花器や花ばさみはご用意いたします。（持ち込みも可能）
        注意
        ・申込は1回ごとに受付いたします。先々のお申し込みはできません。
        ・開催日１週間前より花材の手配に入りますので、開催日１週間前以降のキャンセルはできません。
        キャンセルされる場合は全額負担となります。



        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        
        
        RichText.attributedText = attributedString
        RichText.dataDetectorTypes = [.link]
        RichText.isEditable = false
        RichText.isSelectable = true
    }
}


