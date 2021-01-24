//
//  IsAccessibilityElementViewController.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/11/07.
//

import UIKit

class IsAccessibilityElementViewController: UIViewController {
    static func make(with api: API) -> IsAccessibilityElementViewController {
        let sb = UIStoryboard(name: "IsAccessibilityElement", bundle: nil)
        let vc = sb.instantiateInitialViewController() as! IsAccessibilityElementViewController
        vc.title = api.rawValue
        return vc
    }
}
