//
//  CustomButton.swift
//  Lesson15_Kotylo
//
//  Created by Кирилл Котыло on 17.04.25.
//
import UIKit

class CustomButton: UIButton {
    
    let colorButton: UIColor
    let titleButton: String
    
   
    init (color: UIColor, title: String) {
        colorButton = color
        titleButton = title
        super.init(frame: .zero)
        setupUI()
    }
    
//    init(color: UIColor, title: String) {
//        
//        super.init(frame: .zero)
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(titleButton, for: .normal)
        tintColor = .white
        backgroundColor = colorButton
    }
}
