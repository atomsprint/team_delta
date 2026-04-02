//
//  EleventhViewController.swift
//  IzaKamakuraApp
//
//  Created by Hide I on 2026/03/27.
//

import UIKit

class EleventhViewController: UIViewController {

    // Connect this to your UITextView in Interface Builder
    
    
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
        リッチテキスト教えます
        """
        attributedString.append(NSAttributedString(
            string: title,
            attributes: [.font: titleFont]
        ))

        if let image = UIImage(named: "タケタケ") {
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
            今日はリッチテキストの説明をします
            ここに自分の好きな文章を打ち込むと表
            示されます。後少しです頑張って！！！
        """
        attributedString.append(NSAttributedString(
            string: text1,
            attributes: [.font: bodyFont]
        ))

        if let image = UIImage(named: "ヤマヤマ") {
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
            今日はリッチテキストの説明をします
            ここに自分の好きな文章を打ち込むと表
            示されます。長い文章はスクロールできます
        """
        attributedString.append(NSAttributedString(
            string: text2,
            attributes: [.font: bodyFont]
        ))

        if let image = UIImage(named: "いしいし") {
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
            今日はリッチテキストの説明をします
            ここに自分の好きな文章を打ち込むと表
            示されます。後少しです頑張って！！！
            """
        attributedString.append(NSAttributedString(
            string: text3,
            attributes: [.font: bodyFont]
        ))

        if let image = UIImage(named: "ちずちず") {
            let attachment = NSTextAttachment()
            attachment.image = image

            // 画像サイズを調整
            let ratio = maxWidth / image.size.width
            attachment.bounds = CGRect(x: 0, y: 0,
                                       width: maxWidth,
                                       height: image.size.height * ratio)

            attributedString.append(NSAttributedString(attachment: attachment))
        }

        let text4 = """
            今日はリッチテキストの説明をします
            ここに自分の好きな文章を打ち込むと表
            示されます。これで説明は終わりです。お疲れ様でした。

            """

        attributedString.append(NSAttributedString(
            string: text4,
            attributes: [.font: bodyFont]
        ))

        // Apply to the text view
        Richtext.attributedText = attributedString
        Richtext.dataDetectorTypes = [.link]
    }
}

