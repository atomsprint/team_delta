//
//  TenthViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/02/20.
//

import UIKit

class TenthViewController: UIViewController {
    
   
    @IBOutlet weak var Richtext: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupRichContent()
    }
    
    func setupRichContent() {
        let attributedString = NSMutableAttributedString()
        
        // フォント設定
        let titleFont = UIFont.boldSystemFont(ofSize: 24)
        let bodyFont = UIFont.systemFont(ofSize: 16)
        let maxWidth = view.bounds.width - 40
        
        // === タイトル ===
        let title = """
        建長寺
        鎌倉の自然・坐禅、これが日本
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))
        
        
        let text1 = """
        坐禅は仏教の禅宗で行う修行です。
        禅宗は鎌倉時代に広まり、「不立文字」という体験を重視する教えが大切にされています。禅宗の始まり、
        鎌倉で座禅の体験をしませんか。

        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))
        
        
        if let image = UIImage(named: "建長寺") {
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
        坐禅は仏教の禅宗で行う修行です。
        禅宗は鎌倉時代に広まり、「不立文字」という体験を重視する教えが大切にされています。禅宗の始まり、
        鎌倉で座禅の体験をしませんか。　　　　　　　　　　　　　　　　〈中学生の感想〉
        私は鎌倉で初めて座禅を体験しました。会場に入ると畳がひんやりしていて、つま先が少し痛くなるほど冷たかったです。私たちは一人ずつ座布団を取り、部屋の中央に座りました。
        始まる少し前、周りの人がみんな水色の紙を持っていることに気づきました。隣の人に「これは買うんだよ」と教えてもらい、お母さんからお金をもらって近くの机で100円の紙を買いました。その紙には、最初に読むお経が書かれていました。
        座禅が始まると、まず10分ほどみんなでお経を読みました。
        そのあと15分間の座禅です。私は寒さと眠気で少しつらかったのですが、静かな空気の中で自分の呼吸だけに集中するのは不思議な体験でした。
        15分が終わると5分間の休憩がありました。そこでお坊さんが「もう一度座禅をします」と言ったので、とても驚きました。2回行うとは知らなかったからです。でも、2回目をやって本当によかったと思っています。2回目の座禅では心を空っぽにできて、学校や部活の疲れがすっと消えていくように感じました。　　　　　　　　　　　　　　　　　　　　坐禅のおすすめポイント！
        鎌倉での座禅体験は、心を落ち着かせたい人にとてもおすすめです。静かな時間の中で、自分と向き合う特別な体験ができます。
        曜日　　:毎週金曜、土曜
        時間　　:15:30〜16:30
        場所　　:建長寺(変更の場合があります)
        申し込み:不要
        費用　　:大人500円、小中学生200円
        公式HP  :https://www.kenchoji.com/zazen/
        住所　　:〒247-8525　神奈川県鎌倉市山ノ内８　　　　　　　〈注意〉
        ・遅刻すると参加できないので開始15分前までに坐禅会場に入ってください
        ・会場に「坐禅の手引き」（100円）がありますので購入してください
        ・お寺の造りはとても開放的で、冬は風がそのまま入ってくるためとても寒いです
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

