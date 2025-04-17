//
//  CustomView.swift
//  Lesson15_Kotylo
//
//  Created by Кирилл Котыло on 17.04.25.
//
import UIKit

class CustomView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Offer"
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .systemGray
        label.textAlignment = .center
        label.text = "A set of 130 elements, perfectly fitting each\n other. Click, drag, resize, adapt, combine. A\n set of 130elements, perfectly fitting each \nother."
        return label
    }()
    
     let ignoreButton = CustomButton(color: .gray, title: "IGNORE")
     let gotItButton = CustomButton(color: .green, title: "GOT IT")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setContreints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(ignoreButton)
        addSubview(gotItButton)
    }
    
    private func setContreints() {
        NSLayoutConstraint.activate([
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            ignoreButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            ignoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            ignoreButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            ignoreButton.widthAnchor.constraint(equalToConstant: 100),
            
            gotItButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            gotItButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            gotItButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            gotItButton.widthAnchor.constraint(equalToConstant: 100),
            
        ])
    }
}
