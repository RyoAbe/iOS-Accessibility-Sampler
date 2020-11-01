//
//  ViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/10/18.
//

import UIKit

class MainViewController: UITableViewController {
    private let topics = [
        "Essentials",
        "Behaviors",
        "Guided Access",
        "Actions",
        "Elements",
        "Containers",
        "Navigation",
        "Drag and Drop Support",
        "Notifications",
        "Conversions",
        "Convenience Functions",
        "Capabilities"
    ]
}

extension MainViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let topic = topics[indexPath.row]
        cell.textLabel?.text = topic
        return cell
    }
}
