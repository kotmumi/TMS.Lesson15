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
        
    }
    
    private func setupUI() {
        view.backgroundColor = .clear
        view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customView.widthAnchor.constraint(equalToConstant: 300),
            customView.heightAnchor.constraint(equalToConstant: 200)
                ])
        customView.ignoreButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        customView.gotItButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
    }
    
    @objc func dismissAlert(_ sender: CustomButton) {
        
        UIView.animate(withDuration: 0.8) {
            if sender.titleButton == "GOT IT" {
                self.customView.frame = CGRect(x: self.customView.frame.minX, y: -2000, width: 300, height: 200)
            } else {
                self.customView.frame = CGRect(x: self.customView.frame.minX, y: 2000, width: 300, height: 200)
            }
           
            self.loadViewIfNeeded()
            self.dismiss(animated: true)
        }
       
    }
}
