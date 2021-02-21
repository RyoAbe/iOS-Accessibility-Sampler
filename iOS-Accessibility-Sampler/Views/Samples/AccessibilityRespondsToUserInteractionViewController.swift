//
//  AccessibilityRespondsToUserInteractionViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/02/21.
//

import UIKit

// TODO: 値によってどういった挙動がの変化があるのか分かってない
class AccessibilityRespondsToUserInteractionViewController: UIViewController {
    @IBOutlet private weak var trueLabel: UILabel!
    @IBOutlet private weak var falseLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        trueLabel.accessibilityRespondsToUserInteraction = true
        trueLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTapTrueLabel(_:))))
        falseLabel.accessibilityRespondsToUserInteraction = false
        falseLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTapFalseLabel(_:))))
    }

    @objc func onTapTrueLabel(_ sender: UITapGestureRecognizer) {
        let alert = UIAlertController(title: "taped true label", message: nil, preferredStyle: .alert)
        alert.addAction(.init(title: "cancel", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    @objc func onTapFalseLabel(_ sender: UITapGestureRecognizer) {
        let alert = UIAlertController(title: "taped false label", message: nil, preferredStyle: .alert)
        alert.addAction(.init(title: "cancel", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
}
