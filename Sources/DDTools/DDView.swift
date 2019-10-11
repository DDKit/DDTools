//
//  File.swift
//  
//
//  Created by DCH on 2019/10/10.
//

import Foundation
import UIKit

public extension UIView {
    var dd_x: CGFloat {
        set {
            var f = frame
            f.origin.x = newValue
            frame = f
        }
        get {
            return frame.origin.x
        }
    }
    
    
    var dd_y: CGFloat {
        set {
            var f = frame
            f.origin.y = newValue
            frame = f
        }
        get {
            return frame.origin.y
        }
    }
    
    var dd_w: CGFloat {
        set {
            var f = frame
            f.size.width = newValue
            frame = f
        }
        get {
            return frame.size.width
        }
    }
    
    var dd_h: CGFloat {
        set {
            var f = frame
            f.size.height = newValue
            frame = f
        }
        get {
            return frame.size.height
        }
    }
    
    var dd_size: CGSize {
        set {
            var f = frame
            f.size = newValue
            frame = f
        }
        get {
            return frame.size
        }
    }
    
    var dd_origin: CGPoint {
        set {
            var f = frame
            f.origin = newValue
            frame = f
        }
        get {
            return frame.origin
        }
    }
    
    var dd_corner: CGFloat {
        set {
            layer.masksToBounds = true
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    func dd_shadow()
    {
        self.clipsToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 6
    }

    var dd_borderColor: UIColor {
        set {
            layer.borderColor = newValue.cgColor
        }
        get {
            return  UIColor(cgColor: layer.borderColor!)
        }
    }
}

