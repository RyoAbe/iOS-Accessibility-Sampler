//
//  ViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/10/18.
//

import UIKit

class MainViewController: UITableViewController {
    enum ItemType {
        case topic, article, `protocol`, `struct`
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
            }
        }
    }
    private let docs: [(title: String, rows: [(type: ItemType, title: String)])] = [
        ("Essentials", [
            (.topic, "UIAccessibility"),
            (.topic, "UIAccessibilityContainer"),
            (.article, "Supporting VoiceOver in Your App")
        ]),
        ("Behaviors", [
            (.topic, "UIAccessibilityFocus"),
            (.protocol, "UIAccessibilityIdentification"),
            (.protocol, "UIAccessibilityReadingContent"),
            (.protocol, "UIAccessibilityContentSizeCategoryImageAdjusting"),
            (.struct, "UIAccessibilityTextualContext")
        ]),
        ("Guided Access", []),
        ("Actions", []),
        ("Elements", []),
        ("Containers", []),
        ("Navigation", []),
        ("Drag and Drop Support", []),
        ("Notifications", []),
        ("Conversions", []),
        ("Convenience Functions", []),
        ("Capabilities", [])
    ]
}

extension MainViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        docs.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        docs[section].rows.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        docs[section].title
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row = docs[indexPath.section].rows[indexPath.row]
        cell.textLabel?.text = row.title
        cell.imageView?.image = row.type.image
        return cell
    }
}
