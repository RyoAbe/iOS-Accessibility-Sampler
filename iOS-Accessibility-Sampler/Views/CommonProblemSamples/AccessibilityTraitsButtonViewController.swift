//
//  AccessibilityTraitsButtonViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/10/11.
//

import UIKit

class AccessibilityTraitsButtonViewController: UIViewController {
    @IBOutlet private weak var tappableView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer()
        tapGestureRecognizer.addTarget(self, action: #selector(tapView))
        tappableView.addGestureRecognizer(tapGestureRecognizer)
    }

    @IBAction func tapButton(_ sender: Any) {
        let alert = UIAlertController(title: "ボタン１をタップしました", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    @objc func tapView() {
        let alert = UIAlertController(title: "ボタン２をタップしました", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
}
