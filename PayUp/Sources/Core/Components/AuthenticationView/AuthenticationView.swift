//
//  AuthenticationView.swift
//  PayUp
//
//  Created by pablo henrique on 07/09/25.
//

import Foundation
import UIKit

final class AuthenticationView: UIView {
    
    private let backgroundView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "backgroundView"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let logoImageVIew: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Logo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.titleLarge()
        label.textColor = Colors.textHeading
        label.text = "Olá Calisto"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.paragraphMedium()
        label.textColor = Colors.textParagraph
        label.text = "Desbloqueie com segurança usando o Face ID."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let elipse1: UIImageView = {
       let image = UIImageView(image: UIImage(named: "ellipse1"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let elipse2: UIImageView = {
       let image = UIImageView(image: UIImage(named: "ellipse2"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let elipse3: UIImageView = {
       let image = UIImageView(image: UIImage(named: "ellipse3"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let faceIdIcon: UIImageView = {
        let image = UIImageView(image: UIImage(named: "faceid"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(backgroundView)
        addSubview(logoImageVIew)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(faceIdIcon)
        addSubview(elipse1)
        addSubview(elipse2)
        addSubview(elipse3)
        setupConstraints()
        animeteElipses()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageVIew.topAnchor.constraint(equalTo: topAnchor, constant: 64),
            logoImageVIew.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            titleLabel.topAnchor.constraint(equalTo: logoImageVIew.bottomAnchor, constant: 64),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor ),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            faceIdIcon.centerXAnchor.constraint(equalTo: centerXAnchor),
            faceIdIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            faceIdIcon.widthAnchor.constraint(equalToConstant: 40),
            faceIdIcon.heightAnchor.constraint(equalToConstant: 40),
            
            elipse1.centerXAnchor.constraint(equalTo: faceIdIcon.centerXAnchor),
            elipse1.centerYAnchor.constraint(equalTo: faceIdIcon.centerYAnchor),
            elipse2.centerXAnchor.constraint(equalTo: faceIdIcon.centerXAnchor),
            elipse2.centerYAnchor.constraint(equalTo: faceIdIcon.centerYAnchor),
            elipse3.centerXAnchor.constraint(equalTo: faceIdIcon.centerXAnchor),
            elipse3.centerYAnchor.constraint(equalTo: faceIdIcon.centerYAnchor),
        ])
    }
    
    private func animeteElipses() {
        let elipses = [elipse3, elipse2, elipse1]
        
        for (index, elipse) in elipses.enumerated() {
            elipse.alpha = 0
            
            UIView.animate(withDuration: 1.5,
                           delay: Double(index) * 0.4,
                           options: [.repeat, .autoreverse]
            ) {
                elipse.alpha = 0.15
            }
        }
    }
}
