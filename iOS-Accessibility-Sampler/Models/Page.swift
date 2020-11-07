import UIKit

enum Page {
    case topic(Topic)
    case article(title: String, url: String)
    case api(API)
}

extension Page {
    var image: UIImage? {
        switch self {
        case .topic:
            return UIImage(systemName: "doc.plaintext")
        case .article:
            return UIImage(systemName: "doc")
        case .api:
            return UIImage(systemName: "chevron.left.slash.chevron.right")
        }
    }

    var title: String {
        switch self {
        case .topic(let topic):
            return topic.title
        case .article(let title, _):
            return title
        case .api(let api):
            return api.rawValue
        }
    }
}
