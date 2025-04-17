//
//  ViewController.swift
//  Lesson15_Kotylo
//
//  Created by Кирилл Котыло on 17.04.25.
//

import UIKit

class ViewController: UIViewController {
    
    private let frameButton = CGRect(x: 0, y: 0, width: 200, height: 80)
    
    private let showButton = CustomButton(color: .blue, title: "Show")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        showButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    private func setupUI() {
        showButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(showButton)
        view.backgroundColor = .systemGray
        NSLayoutConstraint.activate([
            showButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            showButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            showButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            showButton.heightAnchor.constraint(equalToConstant: 50),

        ])
    }
    
    @objc func showAlert() {
        let alert = CustomAlertViewController()
        alert.modalPresentationStyle = .overFullScreen 
        alert.modalTransitionStyle = .crossDissolve
        present(alert, animated: true)
    }
    
}

