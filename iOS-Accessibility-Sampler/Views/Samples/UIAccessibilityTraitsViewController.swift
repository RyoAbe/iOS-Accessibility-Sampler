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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

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
        switch trait {
        case .none:
            cell.textLabel?.text = "accessibilityTraits = [.none]"
        case .button:
            cell.textLabel?.text = "accessibilityTraits = [.button]"
        case .link:
            cell.textLabel?.text = "accessibilityTraits = [.link]"
        case .header:
            cell.textLabel?.text = "accessibilityTraits = [.header]"
        case .searchField:
            cell.textLabel?.text = "accessibilityTraits = [.searchField]"
        case .image:
            cell.textLabel?.text = "accessibilityTraits = [.image]"
        case .selected:
            cell.textLabel?.text = "accessibilityTraits = [.selected]"
        case .playsSound:
            cell.textLabel?.text = "accessibilityTraits = [.playsSound]"
        case .keyboardKey:
            cell.textLabel?.text = "accessibilityTraits = [.keyboardKey]"
        case .staticText:
            cell.textLabel?.text = "accessibilityTraits = [.staticText]"
        case .summaryElement:
            cell.textLabel?.text = "accessibilityTraits = [.summaryElement]"
        case .notEnabled:
            cell.textLabel?.text = "accessibilityTraits = [.notEnabled]"
        case .updatesFrequently:
            cell.textLabel?.text = "accessibilityTraits = [.updatesFrequently]"
        case .startsMediaSession:
            cell.textLabel?.text = "accessibilityTraits = [.startsMediaSession]"
        case .adjustable:
            cell.textLabel?.text = "accessibilityTraits = [.adjustable]"
        case .allowsDirectInteraction:
            cell.textLabel?.text = "accessibilityTraits = [.allowsDirectInteraction]"
        case .causesPageTurn:
            cell.textLabel?.text = "accessibilityTraits = [.causesPageTurn]"
        case .tabBar:
            cell.textLabel?.text = "accessibilityTraits = [.tabBar]"
        default:
            break
        }
        cell.accessibilityTraits = [trait]
        return cell
    }
}
