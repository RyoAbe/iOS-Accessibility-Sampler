//
//  UIAccessibilityTraitsViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/01/26.
//

import UIKit

class UIAccessibilityTraitsViewController: UITableViewController {
    private let traits: [UIAccessibilityTraits] = [
        .none,
        .button,
        .link,
        .header,
        .searchField,
        .image,
        .selected,
        .playsSound,
        .keyboardKey,
        .staticText,
        .summaryElement,
        .notEnabled,
        .updatesFrequently,
        .startsMediaSession,
        .adjustable,
        .allowsDirectInteraction,
        .causesPageTurn,
        .tabBar
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        traits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let trait = traits[indexPath.row]
        cell.textLabel?.text = "accessibilityTraits = [.\(trait.title ?? "")]"
        cell.detailTextLabel?.text = trait.subtitle
        cell.accessibilityTraits = [trait]
        return cell
    }
}

private extension UIAccessibilityTraits {
    var title: String? {
        switch self {
        case .none:
            return "none"
        case .button:
            return "button"
        case .link:
            return "link"
        case .header:
            return "header"
        case .searchField:
            return "searchField"
        case .image:
            return "image"
        case .selected:
            return "selected"
        case .playsSound:
            return "playsSound"
        case .keyboardKey:
            return "keyboardKey"
        case .staticText:
            return "staticText"
        case .summaryElement:
            return "summaryElement"
        case .notEnabled:
            return "notEnabled"
        case .updatesFrequently:
            return "updatesFrequently"
        case .startsMediaSession:
            return "startsMediaSession"
        case .adjustable:
            return "adjustable"
        case .allowsDirectInteraction:
            return "allowsDirectInteraction"
        case .causesPageTurn:
            return "causesPageTurn"
        case .tabBar:
            return "tabBar"
        default:
            return nil
        }
    }
    var subtitle: String? {
        switch self {
        case .none:
            return "The accessibility element has no traits."
        case .button:
            return "The accessibility element should be treated as a button."
        case .link:
            return "The accessibility element should be treated as a link."
        case .searchField:
            return "The accessibility element should be treated as a search field."
        case .image:
            return "The accessibility element should be treated as an image."
        case .selected:
            return "The accessibility element is currently selected."
        case .playsSound:
            return "The accessibility element plays its own sound when activated."
        case .keyboardKey:
            return "The accessibility element behaves as a keyboard key."
        case .staticText:
            return "The accessibility element should be treated as static text that cannot change."
        case .summaryElement:
            return "The accessibility element provides summary information when the application starts."
        case .notEnabled:
            return "The accessibility element is not enabled and does not respond to user interaction."
        case .updatesFrequently:
            return "The accessibility element frequently updates its label or value."
        case .startsMediaSession:
            return "The accessibility element starts a media session when it is activated."
        case .adjustable:
            return "The accessibility element allows continuous adjustment through a range of values."
        case .allowsDirectInteraction:
            return "The accessibility element allows direct touch interaction for VoiceOver users."
        case .causesPageTurn:
            return "The accessibility element should cause an automatic page turn when VoiceOver finishes reading the text within it."
        case .header:
            return "The accessibility element is a header that divides content into sections, such as the title of a navigation bar."
        default:
            return nil
        }
    }
}
