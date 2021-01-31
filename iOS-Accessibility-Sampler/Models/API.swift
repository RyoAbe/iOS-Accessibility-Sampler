import Foundation

enum API: String {
    case isAccessibilityElement
    case UIAccessibilityIdentification
    case UIAccessibilityReadingContent
    case UIAccessibilityContentSizeCategoryImageAdjusting
    case UIAccessibilityTextualContext
    case UIAccessibilityCustomRotor
    case accessibilityElementsHidden
    case accessibilityNotifiesWhenDestroyed // macOS https://developer.apple.com/documentation/objectivec/nsobject/1534050-accessibilitynotifieswhendestroy
    case accessibilityRespondsToUserInteraction
    case accessibilityViewIsModal
    case shouldGroupAccessibilityChildren
    case UIAccessibilityTraits
}

extension API {
    var isAvailableOnIOS: Bool {
        switch self {
        case .isAccessibilityElement,
             .UIAccessibilityIdentification,
             .UIAccessibilityReadingContent,
             .UIAccessibilityContentSizeCategoryImageAdjusting,
             .UIAccessibilityTextualContext,
             .UIAccessibilityCustomRotor,
             .accessibilityElementsHidden,
             .accessibilityRespondsToUserInteraction,
             .accessibilityViewIsModal,
             .shouldGroupAccessibilityChildren,
             .UIAccessibilityTraits:
            return true
        case .accessibilityNotifiesWhenDestroyed:
            return false
        }
    }
}
