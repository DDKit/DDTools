//
//  File.swift
//  
//
//  Created by DCH on 2019/10/10.
//

import Foundation
import UIKit

public extension UIButton {
    // 上图下字button
    func upImageDownLabel(_ space: CGFloat = 0)
    {
        if imageView == nil || titleLabel == nil { return }
        let imageSize = imageView!.dd_size
        var titleSize = titleLabel!.dd_size
        titleSize.width = max(titleSize.width,titleLabel!.intrinsicContentSize.width)
        titleEdgeInsets = UIEdgeInsets(top: imageSize.height + space, left: -imageSize.width, bottom: -space, right: 0)
        imageEdgeInsets = UIEdgeInsets(top: -space, left: 0, bottom: 0, right: -titleSize.width)
    }
    
    // 左图右字
    func leftImageRightLabel(_ space: CGFloat = 0)
    {
        if imageView == nil || titleLabel == nil { return }
        let imageSize = imageView!.dd_size
        var titleSize = titleLabel!.dd_size
        titleSize.width = max(titleSize.width,titleLabel!.intrinsicContentSize.width)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width - space, bottom: 0, right: imageSize.width)
        imageEdgeInsets = UIEdgeInsets(top: 0, left: titleSize.width, bottom: 0, right: -titleSize.width)
    }
    
    // badge
    func badge(_ value: Int?) {
        if imageView == nil || titleLabel == nil { return }
        let badgeW: CGFloat = 20
        let imageSize = imageView!.dd_size
        let imageX = imageView!.dd_x
        let imageY = imageView!.dd_y
        let badgeLable = UILabel()
        badgeLable.text = value == nil ? "" : "\(value!)"
        badgeLable.textAlignment = .center
        badgeLable.textColor = .white
        badgeLable.font = UIFont.systemFont(ofSize: 12)
        badgeLable.layer.masksToBounds = true
        badgeLable.layer.cornerRadius = badgeW * 0.5
        badgeLable.backgroundColor = .red
        
        let badgeX = imageX + imageSize.width - badgeW*0.5;
        let badgeY = imageY - badgeW*0.25;
        badgeLable.frame = CGRect(x: badgeX, y: badgeY, width: badgeW, height: badgeW)
        addSubview(badgeLable)
    }
    
}

