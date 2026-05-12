import UIKit

/// RichArticle への遷移専用。`identifier` を `article__（Articles.jsonのキー）` にすること。
final class ArticleStoryboardSegue: UIStoryboardSegue {

    private static let prefix = "article__"

    override func perform() {
        guard let destinationVC = destination as? RichArticleViewController else {
            assertionFailure("ArticleStoryboardSegue の宛先は RichArticleViewController にしてください。")
            return
        }

        if let sid = identifier, sid.hasPrefix(Self.prefix) {
            let body = String(sid.dropFirst(Self.prefix.count))
            // `article__キー___（Storyboard上のsegueのid）` — 同一キーの重複を避ける
            if let range = body.range(of: "___") {
                destinationVC.articleContentKey = String(body[..<range.lowerBound])
            } else {
                destinationVC.articleContentKey = body
            }
        }

        source.show(destinationVC, sender: self)
    }
}
