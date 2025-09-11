//
//  SplashViewModel.swift
//  PayUp
//
//  Created by pablo henrique on 03/09/25.
//

import Foundation
import UIKit

final class SplashViewModel {
    var onAnimationCompleted: (() -> Void)?
    
    func performInitialAnimation(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            completion()
        }
    }
}
