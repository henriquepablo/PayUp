//
//  DaySelectorView.swift
//  PayUp
//
//  Created by pablo henrique on 12/09/25.
//

import Foundation
import UIKit

final class DaySelectorView: UIView {
    
    private var buttons: [UIButton] = []
    private let viewModel = DaySelectorViewModel()
    
    private let scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
        setupButtons()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(scrollView)
        addSubview(stackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
    }
    
    private func setupButtons() {
        for (index, day) in viewModel.days.enumerated() {
            var configuration = UIButton.Configuration.filled()
            configuration.title = day
            configuration.baseBackgroundColor = Colors.backgroundTertiary
            configuration.baseForegroundColor = Colors.textHeading
            configuration.cornerStyle = .fixed
            configuration.contentInsets = .zero
            
            let button = UIButton(configuration: configuration, primaryAction: nil)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 6
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.clear.cgColor
            button.titleLabel?.font = Fonts.paragraphMedium()
            button.heightAnchor.constraint(equalToConstant: 32).isActive = true
            button.widthAnchor.constraint(equalToConstant: 48).isActive = true
            button.tag = index
            //button.addTarget(self, action: #selector(dayTapped(_:)), for: .touchUpInside)
            buttons.append(button)
            stackView.addArrangedSubview(button)

        }
    }
    
    @objc
    private func dayTapped() {
        
    }
}
