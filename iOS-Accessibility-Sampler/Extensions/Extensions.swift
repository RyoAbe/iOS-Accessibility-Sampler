//
//  UIViewController+Extension.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/01/24.
//

import UIKit

extension UIViewController {
    static func make(with api: API) -> UIViewController {
        let sb = UIStoryboard(name: "Sample", bundle: nil)
        let vc = sb.instantiateViewController(identifier: api.rawValue)
        vc.title = api.rawValue
        return vc
    }
}

extension UITableViewController {
    static func makeTableVC(with api: API) -> UITableViewController {
        let sb = UIStoryboard(name: "Sample", bundle: nil)
        let vc = sb.instantiateViewController(identifier: api.rawValue) as! UITableViewController
        vc.title = api.rawValue
        return vc
    }
}
