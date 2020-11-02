import UIKit
struct Documentation {
    static let shared = Documentation()
    private init() {}
    static let top = Topic(
        title: "Accessibility for iOS and tvOS",
        sections: [
            .init(
                title: "Essentials",
                pages: [
                    .init(title: "UIAccessibility", type: .topic(uiAccessibility)),
                    .init(title: "UIAccessibilityContainer", type: .protocol),
                    .init(title: "Supporting VoiceOver in Your App", type: .article(url: "https://developer.apple.com/documentation/uikit/accessibility_for_ios_and_tvos/supporting_voiceover_in_your_app")),
                ]
            ),
            .init(
                title: "Behaviors",
                pages: [
                    .init(title: "UIAccessibilityFocus", type: .protocol),
                    .init(title: "UIAccessibilityIdentification", type: .protocol),
                    .init(title: "UIAccessibilityReadingContent", type: .protocol),
                    .init(title: "UIAccessibilityContentSizeCategoryImageAdjusting", type: .protocol),
                    .init(title: "UIAccessibilityTextualContext", type: .protocol),
                ]
            ),
            .init(title: "Behaviors", pages: []),
            .init(title: "Guided Access", pages: []),
            .init(title: "Actions", pages: []),
            .init(title: "Elements", pages: []),
            .init(title: "Containers", pages: []),
            .init(title: "Navigation", pages: []),
            .init(title: "Drag and Drop Support", pages: []),
            .init(title: "Notifications", pages: []),
            .init(title: "Conversions", pages: []),
            .init(title: "Convenience Functions", pages: []),
            .init(title: "Capabilities", pages: [])
        ]
    )

    static let uiAccessibility = Topic(
        title: "UIAccessibility",
        sections: [
            .init(
                title: "Determining Accessibility",
                pages: [
                    .init(title: "isAccessibilityElement", type: .var)
                ]
            ),
            .init(
                title: "Configuring Behavior",
                pages: [
                    .init(title: "Accessibility Traits", type: .protocol),
                    .init(title: "var accessibilityTraits: UIAccessibilityTraits", type: .var),
                    .init(title: "struct UIAccessibilityTraits", type: .var),
                    .init(title: "var accessibilityCustomRotors: [UIAccessibilityCustomRotor]?", type: .var),
                    .init(title: "var accessibilityElementsHidden: Bool", type: .var),
                    .init(title: "var accessibilityNotifiesWhenDestroyed: Bool", type: .var),
                    .init(title: "var accessibilityRespondsToUserInteraction: Bool", type: .var),
                    .init(title: "var accessibilityViewIsModal: Bool", type: .var),
                    .init(title: "var shouldGroupAccessibilityChildren: Bool", type: .var)
                ]
            ),
        ]
    )
}

struct Page {
    let title: String
    let type: PageType
}

enum PageType {
    case topic(Topic)
    case article(url: String)
    case `protocol`
    case `struct`
    case `var`
}

extension PageType {
    var image: UIImage? {
        switch self {
        case .topic:
            return UIImage(systemName: "doc.plaintext")
        case .article:
            return UIImage(systemName: "doc")
        case .protocol:
            return UIImage(systemName: "chevron.left.slash.chevron.right")
        case .struct:
            return UIImage(systemName: "chevron.left.slash.chevron.right")
        case .var:
            return UIImage(systemName: "chevron.left.slash.chevron.right")
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

