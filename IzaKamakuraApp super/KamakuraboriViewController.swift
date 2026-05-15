//
//  KamakuraboriViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/23.
//

import UIKit

class KamakuraboriViewController: UIViewController {
    
   
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
        
        
    
        
        
        if let image = UIImage(named: "鎌倉彫仮") {
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
        
        
        鎌倉彫とは、桂や銀杏などの木をお盆や皿に成形し、文様を彫り、その上に漆を塗って仕上げた工芸品で、鎌倉市とその周辺で作られたものを言います。
         鎌倉時代、中国の宋から禅宗とともに伝来した漆を何層も重ねたものに模様を施した堆朱や堆黒といった工芸品の影響を受けましたが、堆朱や堆黒のような漆を何層にも重ねた漆器を彫るのではなく模様を彫ったお皿に漆を塗るという日本独自の方法へと発展させたものが鎌倉彫の始まりです。
        表面に彫跡を意識的につける刀痕が特徴で、主に寺院での仏具・法具・宮大工・僧侶といった人々を中心に、技法が受け継がれてきたと考えられています。他の漆器と同様、使い込むほどに艶が深まります。


        【漆】
        漆は、日本が誇る美しくて価値のある伝統工芸です。漆の木からとれる樹液は、天然のコーティング材や接着剤として使われて、表面のなめらかさや上品な光沢が特徴です。
        職人さんは、漆の樹液に色のもとになる顔料を混ぜて、木の器に何度もていねいにぬり重ねます。ぬった漆は、しっかり固まって丈夫になるまでに、湿度の高い環境と少しあたたかい温度が必要です。
        漆は2000年以上前から、中国をはじめとしたアジアの国々で使われてきました。とれる量が少なく、とても貴重なため、昔は高価な工芸品でした。日本の漆器は海外でも人気があり、ヨーロッパの王族たちが競って集めていたともいわれています。
        漆は、お盆やお箸、茶道具、仏具など、さまざまな道具に使われています。丈夫で長く使えるのも、漆の大きな魅力です。




        鎌倉彫資料館
        場所：神奈川県鎌倉市小町2-15-13
        電話：0467-25-1502
        講習日、時間：第１・第４土曜日　10:00～12:00最終受付で所要時間90-120分
        　　　　※予約不要、先着20名
        料金：大人5000円　小中学生4000円
        　　　※漆塗りをする場合は別途料金がかかります
        言語：日本語
        HP：https://kamakuraborikaikan.jp/museum/educational/taiken-individual/
        ※6名以上の団体で水〜日の10-12時もしくは13-15時で予約可能

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}




