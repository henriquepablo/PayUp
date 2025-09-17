//
//  PaymentCardView.swift
//  PayUp
//
//  Created by pablo henrique on 16/09/25.
//

import Foundation
import UIKit

final class PaymentCardView: UIView {
    
    
    private let container: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.backgroundSecondary
        view.layer.cornerRadius = 6
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let iconImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "callendarDollar"))
        image.contentMode = .scaleAspectFit
        image.tintColor = Colors.accentOrange
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "A receber"
        label.font = Fonts.paragraphSmall()
        label.textColor = Colors.textParagraph
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Aurora Tech Soluções Digitais"
        label.font = Fonts.titleSmall()
        label.textColor = Colors.textHeading
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 250,00"
        label.font = Fonts.paragraphMedium()
        label.textColor = Colors.textParagraph
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(container)
        container.addSubview(iconImage)
        container.addSubview(subtitleLabel)
        container.addSubview(nameLabel)
        container.addSubview(valueLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            iconImage.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            iconImage.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            iconImage.widthAnchor.constraint(equalToConstant: 24),
            iconImage.heightAnchor.constraint(equalToConstant: 24),
            
            subtitleLabel.topAnchor.constraint(equalTo: iconImage.topAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: 16),
            
            nameLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 4),
            nameLabel.leadingAnchor.constraint(equalTo: subtitleLabel.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -32),
            
            valueLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            valueLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            valueLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -32)
        ])
    }
    
    func configure(name: String, value: String) {
        nameLabel.text = name
        valueLabel.text = value
    }
}
