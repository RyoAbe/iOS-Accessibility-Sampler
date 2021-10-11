//
//  AccessibilityTraitsButtonViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/10/11.
//

import UIKit

class AccessibilityTraitsButtonViewController: UIViewController {
    @IBOutlet private weak var tappableView1: UIView!
    @IBOutlet private weak var tappableView2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap1 = UITapGestureRecognizer()
        tap1.addTarget(self, action: #selector(tapView1))
        tappableView1.addGestureRecognizer(tap1)
        tappableView1.toRound()

        let tap2 = UITapGestureRecognizer()
        tap2.addTarget(self, action: #selector(tapView2))
        tappableView2.addGestureRecognizer(tap2)
        tappableView2.toRound()
    }

    @IBAction func tapButton(_ sender: Any) {
        let alert = UIAlertController(title: "ボタン１をタップしました", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    @objc func tapView1() {
        let alert = UIAlertController(title: "View１をタップしました", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    @objc func tapView2() {
        let alert = UIAlertController(title: "View２をタップしました", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
}

private extension UIView {
    func toRound() {
        clipsToBounds = true
        layer.cornerRadius = 10
    }
}
