//
//  Tools.swift
//  ZQSwiftTools
//
//  Created by ZhiQiang wei on 2021/3/18.
//

import Foundation
import UIKit

extension UIView {
    public func setCorner(_ corner:CGFloat) -> Self {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = corner
        
        return self
    }
     
    public func setBorder(_ border:CGFloat, color: UIColor) -> Self {
        self.layer.borderWidth = border
        self.layer.borderColor = color.cgColor
        
        return self
    }
}
