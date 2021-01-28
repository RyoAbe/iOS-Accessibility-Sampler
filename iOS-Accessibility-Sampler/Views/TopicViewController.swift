//
//  ViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/10/18.
//

import UIKit
import SafariServices

class TopicViewController: UITableViewController {
    private var topic: Topic!

    static func make(with topic: Topic) -> TopicViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "Topic") as! TopicViewController
        vc.topic = topic
        return vc
    }

    required init?(coder: NSCoder) {
        self.topic = Documentation.top
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = topic.title
    }
}

extension TopicViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        topic.sections.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        topic.sections[section].title
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topic.sections[section].pages.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let page = topic.sections[indexPath.section].pages[indexPath.row]
        cell.textLabel?.text = page.title
        cell.imageView?.image = page.image
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let page = topic.sections[indexPath.section].pages[indexPath.row]
        switch page {
        case .topic(let topic):
            let vc = TopicViewController.make(with: topic)
            navigationController?.pushViewController(vc, animated: true)
        case .article(_, let url):
            let vc = SFSafariViewController(url: URL(string: url)!)
            present(vc, animated: true)
        case .api(let api):
            tableView.deselectRow(at: indexPath, animated: true)
            showSample(with: api)
        }
    }
}

private extension TopicViewController {
    func showSample(with api: API) {
        switch api {
        case .isAccessibilityElement:
            let vc = UIViewController.make(with: api)
            navigationController?.pushViewController(vc, animated: true)
        case .UIAccessibilityTraits:
            let vc = UITableViewController.makeTableVC(with: api)
            navigationController?.pushViewController(vc, animated: true)
        case .UIAccessibilityCustomRotor:
            let vc = UIViewController.make(with: api)
            navigationController?.pushViewController(vc, animated: true)
        case .UIAccessibilityIdentification, .UIAccessibilityReadingContent, .UIAccessibilityContentSizeCategoryImageAdjusting, .UIAccessibilityTextualContext, .accessibilityElementsHidden, .accessibilityNotifiesWhenDestroyed, .accessibilityRespondsToUserInteraction, .accessibilityViewIsModal, .shouldGroupAccessibilityChildren:
            showUnimplementedAlert()
        }
    }

    func showUnimplementedAlert() {
        let alert = UIAlertController(title: "Unimplemented", message: nil, preferredStyle: .alert)
        alert.addAction(.init(title: "cancel", style: .cancel))
        present(alert, animated: true)
    }
}
