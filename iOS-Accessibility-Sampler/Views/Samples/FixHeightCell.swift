//
//  StaticCell.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2020/11/08.
//

import UIKit

class StaticCell: UITableViewCell {
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        let size = super.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)
        return CGSize(width: size.width, height: max(size.height, 60))
    }
}
