//
//  UIAccessibilityCustomRotorViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/01/28.
//

import UIKit

class UIAccessibilityCustomRotorViewController: UIViewController {
    private var counter = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
    @IBOutlet private weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let rotor = UIAccessibilityCustomRotor(name: "Counter") { [weak self] (predicate) -> UIAccessibilityCustomRotorItemResult? in
            guard let self = self else { return nil }
            self.counter = predicate.searchDirection == .previous  ? self.counter + 1 : self.counter - 1
            UIAccessibility.post(notification: UIAccessibility.Notification.announcement, argument: self.counterLabel.text)
            return UIAccessibilityCustomRotorItemResult(targetElement: self.counterLabel, targetRange: nil)
        }
        accessibilityCustomRotors = [rotor]
    }
}
