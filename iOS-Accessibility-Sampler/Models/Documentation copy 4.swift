import UIKit
struct Documentation {
    static let shared = Documentation()
    private init() {}
    static let top = Topic(
        title: "Accessibility for iOS and tvOS",
        sections: [
            Section(
                title: "Essentials",
                pages: [
                    .topic(uiAccessibility),
                    .topic(uiAccessibilityContainer),
                    .article(title: "Supporting VoiceOver in Your App", url: "https://developer.apple.com/documentation/uikit/accessibility_for_ios_and_tvos/supporting_voiceover_in_your_app")
                ]
            ),
            Section(
                title: "Behaviors",
                pages: [
                    .topic(uiAccessibilityFocus),
                    .api(.UIAccessibilityIdentification),
                    .api(.UIAccessibilityReadingContent),
                    .api(.UIAccessibilityContentSizeCategoryImageAdjusting),
                    .api(.UIAccessibilityTextualContext),
                ]
            ),
            Section(title: "Behaviors", pages: []),
            Section(title: "Guided Access", pages: []),
            Section(title: "Actions", pages: []),
            Section(title: "Elements", pages: []),
            Section(title: "Containers", pages: []),
            Section(title: "Navigation", pages: []),
            Section(title: "Drag and Drop Support", pages: []),
            Section(title: "Notifications", pages: []),
            Section(title: "Conversions", pages: []),
            Section(title: "Convenience Functions", pages: []),
            Section(title: "Capabilities", pages: [])
        ]
    )
    static let uiAccessibility = Topic(
        title: "UIAccessibility",
        sections: [
            Section(
                title: "Determining Accessibility",
                pages: [
                    .api(.isAccessibilityElement)
                ]
            ),
            Section(
                title: "Configuring Behavior",
                pages: [
                    .topic(accessibilityTraits),
                    .api(.accessibilityCustomRotors),
                    .api(.accessibilityElementsHidden),
                    .api(.accessibilityNotifiesWhenDestroyed),
                    .api(.accessibilityRespondsToUserInteraction),
                    .api(.accessibilityViewIsModal),
                    .api(.shouldGroupAccessibilityChildren),
                ]
            ),
        ]
    )
    static let uiAccessibilityContainer = Topic(title: "UIAccessibilityContainer", sections: [])
    static let uiAccessibilityFocus = Topic(title: "UIAccessibilityFocus", sections: [])
    static let accessibilityTraits = Topic(title: "Accessibility Traits", sections: [])
}

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

struct Topic {
    let title: String
    let sections: [Section]
}

struct Section {
    let title: String
    let pages: [Page]
}

enum Decorator {
    case `protocol`
    case `struct`
    case `var`
}

enum API: String {
    case isAccessibilityElement
    case UIAccessibilityIdentification
    case UIAccessibilityReadingContent
    case UIAccessibilityContentSizeCategoryImageAdjusting
    case UIAccessibilityTextualContext
    case accessibilityCustomRotors
    case accessibilityElementsHidden
    case accessibilityNotifiesWhenDestroyed
    case accessibilityRespondsToUserInteraction
    case accessibilityViewIsModal
    case shouldGroupAccessibilityChildren
}
