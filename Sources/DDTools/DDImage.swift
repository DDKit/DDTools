
//
//  File.swift
//  
//
//  Created by DCH on 2019/10/10.
//

import Foundation
import UIKit

public extension UIImage {
    /**
     *  重设图片大小
     */
    func reSizeImage(reSize:CGSize)->UIImage {
        //UIGraphicsBeginImageContext(reSize);
        UIGraphicsBeginImageContextWithOptions(reSize,false,UIScreen.main.scale)
        draw(in: CGRect(origin: CGPoint.zero, size: reSize))
        let reSizeImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext();
        return reSizeImage;
    }
    
    /**
     *  等比率缩放
     */
    func scaleImage(scaleSize:CGFloat)->UIImage {
        let reSize = CGSize(width: size.width * scaleSize, height: size.height * scaleSize)
        return reSizeImage(reSize: reSize)
    }
}

