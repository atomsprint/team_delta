//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class MeigetsuinViewController: UIViewController {
    
    
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
        
        if let image = UIImage(named: "明月院") {
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
        
        別名あじさい寺。数千本のあじさいに目を奪われます
        
        ・本堂
        御本尊・聖観世音菩薩を祀る。
        本堂後庭園を望む円形の窓「悟りの窓」がある。お堂の前面には、枯山水庭園が整えられている。
        
        ・瓶の井
        鎌倉十井のひとつ。その中でも、現在も使用できる貴重な井戸。岩盤を掘りぬいた井戸で、内側が水瓶のようにふくらんでいることから「瓶の井」と呼ばれる。水を飲めるかもしれません
        
        ・ウサギとカメ
        拝観入口の前には、小さな橋とそこにちょこんと並ぶ「ウサギとカメ」のオブジェがあります。後ろ姿がなんとも愛らしく、思わず写真を撮りたくなるほど。ぜひ見つけてみてくださいね。

        ・明月院やぐら
        明月院の境内にひっそりと佇む「明月院やぐら」は、鎌倉で最大級のやぐら（横穴式の墓所）として知られています。そのスケールは圧巻で、間口約7メートル・奥行き6メートル・高さ3メートルという堂々たる大きさを誇ります。
        内部には立ち入ることはできませんが、外からでもその神秘的な雰囲気と彫刻の美しさをしっかりと楽しむことができます。
        やぐらの中には、石塔の一種である「宝篋印塔」が安置されており、これは室町幕府の重臣・上杉憲方の墓であると伝えられています。
        
        【基本情報】
        住所：鎌倉市山ノ内 189
        電話番号：0467-24-3437
        アクセス：JR北鎌倉駅より徒歩約10分
        拝観時間：9:00～16:00
        拝観料： 500円
        6月は拝観時間が変わります
        拝観時間 8:30～17:00
        ７月２週目ごろにアジサイの花は剪定されます。
        本堂奥庭園　500円　※花菖蒲の開花時期と紅葉の時期のみ特別公開。
        公式HP：https://cms.trip-kamakura.com/place/japanheritage/230.html
        
        　　　　

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


