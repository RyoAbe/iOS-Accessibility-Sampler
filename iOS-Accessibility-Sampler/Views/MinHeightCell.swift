//
//  TopicCell.swift
//  iOS-Accessibility-Sampler
//
//  Created by Ryo Abe on 2021/01/31.
//

import UIKit

class MinHeightCell: UITableViewCell {
    @IBInspectable var minHeight: CGFloat = 60

    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        let size = super.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)
        return CGSize(width: size.width, height: max(size.height, minHeight))
    }
}
