//
//  HomeViewController.swift
//  PayUp
//
//  Created by pablo henrique on 11/09/25.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController {
    
    private let homeView = HomeView()
    
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
