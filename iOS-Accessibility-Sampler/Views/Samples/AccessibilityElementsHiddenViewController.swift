//
//  AccessibilityElementsHiddenViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/01/29.
//

import UIKit

class AccessibilityElementsHiddenViewController: UIViewController {
    @IBOutlet private weak var hiddenStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenStackView.accessibilityElementsHidden = true
    }
}
