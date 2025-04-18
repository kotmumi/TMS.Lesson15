//
//  CustomAlertViewController.swift
//  Lesson15_Kotylo
//
//  Created by Кирилл Котыло on 17.04.25.
//

import UIKit

class CustomAlertViewController: UIViewController {
    private let customView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setConstraints()
    }
    
    private func setupUI() {
        view.backgroundColor = .clear
        view.isHidden = true
        view.addSubview(customView)
        customView.ignoreButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        customView.gotItButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customView.widthAnchor.constraint(equalToConstant: 300),
            customView.heightAnchor.constraint(equalToConstant: 200)
                ])
    }
    
    @objc func dismissAlert(_ sender: CustomButton) {
        
        let upCoordinates = CGRect(x: self.customView.frame.minX, y: -2000, width: 300, height: 200)
        let downCoordinates = CGRect(x: self.customView.frame.minX, y: 2000, width: 300, height: 200)
        
        UIView.animate(withDuration: 0.5) {
            self.customView.frame = sender.titleButton == "GOT IT" ? upCoordinates : downCoordinates
        }
        self.dismiss(animated: true)
    }
}
