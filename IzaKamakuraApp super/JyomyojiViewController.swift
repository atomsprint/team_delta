//
//  EleventhViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/18.
//

import UIKit

class JyomyojiViewController: UIViewController {
    
    
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
        
        if let image = UIImage(named: "浄妙寺") {
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
        
        1188(文治4年)年、足利義兼(北条政子の妹の夫)が建てました。当初は真言宗で極楽寺と言いましたが建長寺開山の蘭渓道隆の弟子が住職になり臨済宗に変え、名前も浄妙寺にしました。鎌倉五山(臨済宗の中で角の高い寺を5番目まで選ぶ)の第5位です。元々はいろいろなお堂などのある大寺院でしたが、火災などで規模が縮小し、今はこぢんまりとした佇まいになっています。


        【観光情報】
        観光の目安時間：15分程度
        ・境内の喜泉庵で枯山水の庭園を見ながら抹茶とお菓子をいただけます。
        　毎日10:00-16:30、予約不要(10名以上の場合は要予約)


        【基本情報】
        住所：鎌倉市浄明寺3-8-41        
        休館日：なし
        拝観時間：9:00-16:30
        拝観料：大人（中学生以上）200円、小学生100円
        アクセス：JR鎌倉駅東口発のバス「浄明寺」下車徒歩1分


        【近くの見どころ】
        石窯ガーデンテラス、鎌足稲荷神社



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


