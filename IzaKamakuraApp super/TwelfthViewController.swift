//
//  TwelfthViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/19.
//

import UIKit

class TwelfthViewController: UIViewController {
    
   
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
        
        if let image = UIImage(named: "和菓子") {
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
        〈和菓子の歴史〉
        日本のスイーツ「和菓子」の歴史は、遥か縄文時代までさかのぼります。すべては、古代の森からの贈り物である「木の実」を砕いて作った、素朴な団子から始まりました。

        数世紀を経て、茶の湯の文化や異文化交流の中で、和菓子は洗練された「食べられる芸術」へと進化を遂げました。四季の移ろいを繊細に映し出す美しい姿へと磨き上げられる一方で、昔ながらの「団子」や「餅」も、変わらぬ親しみやすさで愛され続けています。神聖な儀式から日常のおやつまで、和菓子は今も日本人の心のなかに息づいています。


        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "てて手毬練り切り") {
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
        日本の歴史を味わうためのヒント〉
        和菓子はただの「お菓子」ではありません。縄文時代の知恵と、職人の繊細な技術が詰まったタイムカプセルです。 もし街角で「団子」を見かけたら、それは日本最古のスイーツの形。もし美しい「練り切り」を見かけたら、それは日本の四季を写し取った芸術。 ぜひ、お抹茶と一緒に、日本の歴史を一口かじってみてください。
        〈おすすめの場所・体験〉
        □kominka.
        　ここでは、選んだねりきり細工を2個作ることができます。
        　その後、自分で抹茶をたてます。
        　自分で作った和菓子や抹茶を和モダンな空間で楽しむことが
        　できます。

        〈中学生の体験談〉
        私はkominka.に入った途端今までの疲れが癒やされたような感じがしました。中は薄明るく、目が癒されました。

        12月だったためクリスマスのねりきりがあったので私はそれを作ることにしました。月ごとに作るものが違うそうです。和菓子を2個作ることができました。

        最初は難しく苦戦していたけど2回目になると慣れてきてとても楽しくなりました。細かい作業をしているとそれだけに集中できて、とても新鮮な気持ちでした。抹茶をたてるときにはルールがありとても勉強になりました。

        自分たちで作ったねりきりと抹茶は、和風の台の上に乗せて写真を撮ることができ、もっと楽しくなります。最後に作ったものを食べると甘さが口の中いっぱいに広がり、ゆっくりと過ごせて、とても良い体験でした。

        費用　　:一人3700円　※英語対応は3700+500円かかります　※予約制
        公式HP  :​​https://www.myohonji.or.jp/
        住所　　:〒248-0007 神奈川県鎌倉市大町1-15-1
        アクセス:JR横須賀線 北鎌倉駅「臨時口」より徒歩6分　

        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

