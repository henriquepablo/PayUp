//
//  HomeView.swift
//  PayUp
//
//  Created by pablo henrique on 11/09/25.
//

import Foundation
import UIKit

final class HomeView: UIView {
    
    
    let logoImage: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "Logo"))
        logo.contentMode = .scaleAspectFit
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let profileImage: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "profileImage"))
        logo.contentMode = .scaleAspectFill
        logo.clipsToBounds = true
        logo.layer.cornerRadius = 16
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let buttonBell: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "bell"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let daySelectorView = DaySelectorView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setup() {
        backgroundColor = Colors.backgroundPrimary
        addSubview(logoImage)
        addSubview(profileImage)
        addSubview(buttonBell)
        addSubview(daySelectorView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        daySelectorView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -24),
            logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImage.heightAnchor.constraint(equalToConstant: 24),
            logoImage.widthAnchor.constraint(equalToConstant: 82),
            
            profileImage.centerYAnchor.constraint(equalTo: logoImage.centerYAnchor),
            profileImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            profileImage.heightAnchor.constraint(equalToConstant: 44),
            profileImage.widthAnchor.constraint(equalToConstant: 44),
            
            buttonBell.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor),
            buttonBell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -88),
            buttonBell.heightAnchor.constraint(equalToConstant: 24),
            buttonBell.widthAnchor.constraint(equalToConstant: 24),
            
            daySelectorView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 24),
            daySelectorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            daySelectorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            daySelectorView.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
}
