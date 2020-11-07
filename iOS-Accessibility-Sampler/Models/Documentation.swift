import Foundation

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
