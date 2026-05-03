import UIKit

private struct ArticlePayload: Codable {
    let titleFontSize: Double
    let bodyFontSize: Double
    let segments: [Segment]

    struct Segment: Codable {
        let type: String
        let font: String?
        let text: String?
        let name: String?
    }

    func buildAttributedString(containerWidth: CGFloat) -> NSAttributedString {
        let titleFont = UIFont.boldSystemFont(ofSize: CGFloat(titleFontSize))
        let bodyFont = UIFont.systemFont(ofSize: CGFloat(bodyFontSize))
        let maxWidth = max(1, containerWidth - 40)

        let mas = NSMutableAttributedString()
        for seg in segments {
            switch seg.type {
            case "text":
                let font: UIFont = seg.font == "title" ? titleFont : bodyFont
                mas.append(NSAttributedString(string: seg.text ?? "", attributes: [.font: font]))
            case "image":
                guard let name = seg.name, let image = UIImage(named: name) else { continue }
                let attachment = NSTextAttachment()
                attachment.image = image
                let ratio = maxWidth / image.size.width
                attachment.bounds = CGRect(
                    x: 0,
                    y: 0,
                    width: maxWidth,
                    height: image.size.height * ratio
                )
                mas.append(NSAttributedString(attachment: attachment))
            default:
                break
            }
        }
        return mas
    }
}

private enum ArticlePayloadStore {
    static let articles: [String: ArticlePayload] = loadArticles()

    private static func loadArticles() -> [String: ArticlePayload] {
        guard let url = Bundle.main.url(forResource: "Articles", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decoded = try? JSONDecoder().decode([String: ArticlePayload].self, from: data)
        else {
            assertionFailure("Articles.json がバンドルに含まれていません。")
            return [:]
        }
        return decoded
    }

    static func payload(forLegacyClass name: String) -> ArticlePayload? {
        articles[name]
    }
}

final class RichArticleViewController: UIViewController {

    /// `ArticleStoryboardSegue` またはコードから渡す（`Articles.json` のキー = 旧クラス名）。
    var articleContentKey: String?

    /// 単一 Scene 化後は Storyboard の restorationIdentifier は空でもよい。
    @IBOutlet private weak var Richtext: UITextView?
    @IBOutlet private weak var RichText: UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        applyRichContent()
    }

    private func applyRichContent() {
        guard let resolvedKey = articleContentKey ?? restorationIdentifier, !resolvedKey.isEmpty else {
            assertionFailure("記事キーが未設定です（articleContentKey または restorationIdentifier）。")
            return
        }
        guard let tv = Richtext ?? RichText ?? findTextView(in: view) else { return }
        guard let payload = ArticlePayloadStore.payload(forLegacyClass: resolvedKey) else {
            assertionFailure("Articles.json にキーがありません: \(resolvedKey)")
            return
        }

        tv.attributedText = payload.buildAttributedString(containerWidth: view.bounds.width)
        tv.dataDetectorTypes = [.link]
        tv.isEditable = false
        tv.isSelectable = true
    }

    private func findTextView(in root: UIView) -> UITextView? {
        if let tv = root as? UITextView { return tv }
        for sub in root.subviews {
            if let found = findTextView(in: sub) { return found }
        }
        return nil
    }
}
