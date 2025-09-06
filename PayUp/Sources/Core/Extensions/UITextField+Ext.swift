//
//  UITextField+Ext.swift
//  PayUp
//
//  Created by pablo henrique on 04/09/25.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
