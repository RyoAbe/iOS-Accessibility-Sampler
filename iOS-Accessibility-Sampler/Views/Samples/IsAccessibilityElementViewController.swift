//
//  IsAccessibilityElementViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/11/07.
//

import UIKit

class IsAccessibilityElementViewController: UITableViewController {
    private var api: API

    static func make(with api: API) -> IsAccessibilityElementViewController {
        let sb = UIStoryboard(name: "IsAccessibilityElement", bundle: nil)
        let vc = sb.instantiateInitialViewController() as! IsAccessibilityElementViewController
        vc.api = api
        vc.title = api.rawValue
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
