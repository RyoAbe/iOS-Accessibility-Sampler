//
//  AccessibilityTraitsButtonViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/10/11.
//

import UIKit

final class AccessibilityTraitsButtonViewController: UIViewController {
    @IBOutlet private weak var tappableView1: UIView!
    @IBOutlet private weak var tappableView2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap1 = UITapGestureRecognizer()
        tap1.addTarget(self, action: #selector(tappedButton))
        tappableView1.addGestureRecognizer(tap1)
        tappableView1.toRound()

        let tap2 = UITapGestureRecognizer()
        tap2.addTarget(self, action: #selector(tappedButton))
        tappableView2.addGestureRecognizer(tap2)
        tappableView2.toRound()
    }

    @IBAction func tapButton(_ sender: Any) {
        tappedButton()
    }

    @objc func tappedButton() {
        let alert = UIAlertController(title: "タップしました", message: nil, preferredStyle: .alert)
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

final class AccessibilityTraitsNotEnabledViewController: UIViewController {
    @IBOutlet private weak var tappableView1: UIView!
    @IBOutlet private weak var tappableView2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tappableView1.toRound()
        tappableView2.toRound()
        tappableView2.accessibilityTraits = [.button, .notEnabled]
    }
}

final class ImageButtonViewController: UIViewController {
    @IBOutlet private weak var stackView2: UIStackView!
    @IBOutlet private weak var stackView3: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        let button2 = UIButton(configuration: config, primaryAction: nil)
        button2.setImage(UIImage(named: "star"), for: .normal)
        stackView2.insertArrangedSubview(button2, at: 0)

        let button3 = UIButton(configuration: config, primaryAction: nil)
        button3.setImage(UIImage(named: "star"), for: .normal)
        button3.accessibilityLabel = "お気に入り"
        stackView3.insertArrangedSubview(button3, at: 0)
    }
}

final class ReadLabelViewController: UIViewController {
    @IBOutlet private weak var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let f1 = NumberFormatter()
        let identifier = Locale.preferredLanguages.first ?? Locale.current.identifier
        f1.locale = Locale(identifier: identifier)
        f1.numberStyle = .currencyPlural
        let number = f1.number(from: numberLabel.text ?? "") ?? 0

        f1.numberStyle = .spellOut
        let formatted = f1.string(from: number) ?? ""
        // TODO: 通貨が「円」固定になってしまっている。NumberFormatter の style に spellOut と currencyPlural が適用できると理想
        numberLabel.accessibilityLabel = formatted + "円"
    }
}
