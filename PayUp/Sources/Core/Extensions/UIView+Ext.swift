//
//  UIView+Ext.swift
//  PayUp
//
//  Created by pablo henrique on 03/09/25.
//

import Foundation
import UIKit

extension UIView {
    func animateMoveOut(to point: CGPoint, duration: TimeInterval) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut) {
            self.center = point
            self.alpha = 0
        }
    }
}
