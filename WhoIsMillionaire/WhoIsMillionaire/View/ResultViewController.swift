//
//  resultViewController.swift
//  WhoIsMillionaire
//
//  Created by Николай on 06.02.2023.
//

import Foundation
import UIKit

class resultViewController: UIViewController {
    
    let backgroungView: UIImageView = {
        let backView = UIImageView()
        backView.image = UIImage(named: "background")
        backView.translatesAutoresizingMaskIntoConstraints = false
        return backView
    }()
    
    let logoView: UIImageView = {
        let logoImage = UIImageView ()
        logoImage.image = UIImage(named: "logo")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    let labelAttempt: UILabel = {
        let labelAttempt = UILabel()
        var attempt = "attempt"
        labelAttempt.text = "You losed on \(attempt) attempt"
        labelAttempt.font = UIFont(name: "Roboto", size: 60)
        labelAttempt.textColor = .white
        labelAttempt.translatesAutoresizingMaskIntoConstraints = false
        return labelAttempt
    }()
    
    let labelYourAttempt: UILabel = {
        let yourAttempt = UILabel()
        yourAttempt.text = "Lose"
        yourAttempt.font = UIFont(name: "Roboto", size: 50)
        yourAttempt.textColor = .orange
        yourAttempt.translatesAutoresizingMaskIntoConstraints = false
        return yourAttempt
    }()
    
    let buttonPlayyAgain: UIButton = {
        let buttonPlayAgain = UIButton(type: .system)
        buttonPlayAgain.setTitle("PLAY AGAIN", for:.normal)
        buttonPlayAgain.titleLabel?.font = UIFont(name: "Roboto", size: 5)
        buttonPlayAgain.backgroundColor = .green
        buttonPlayAgain.translatesAutoresizingMaskIntoConstraints = false
        buttonPlayAgain.addTarget(self, action: #selector(playAgainButtonPressed), for: .touchUpInside)
        return buttonPlayAgain
    }()
    
    lazy var buttonExit: UIButton = {
        let buttonExit = UIButton(type: .system)
        
        buttonExit.setTitle("Exit", for: .normal)
        buttonExit.titleLabel?.textColor = UIColor.white
        buttonExit.titleLabel?.font = UIFont(name: "Roboto", size: 55)
        buttonExit.backgroundColor = .green
        buttonExit.addTarget(self, action: #selector(exitButtonPressed), for: .touchUpInside)
        buttonExit.translatesAutoresizingMaskIntoConstraints = false
        return buttonExit
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroungView)
        setupView()
        setupConstaints()
        navigationItem.hidesBackButton = true
    }
    
    func setupView() {
        view.addSubview(logoView)
        view.addSubview(labelAttempt)
        view.addSubview(labelYourAttempt)
        view.addSubview(buttonPlayyAgain)
        view.addSubview(buttonExit)
    }
    
    @objc func playAgainButtonPressed () {
        let gameVC = GameViewController()
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
    
    @objc func exitButtonPressed () {
        
        let startVC = StartViewController()
        self.navigationController?.pushViewController(startVC, animated: true)
    }
}

extension resultViewController {
    func setupConstaints() {
        NSLayoutConstraint.activate ([
            backgroungView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroungView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroungView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroungView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 19),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            labelAttempt.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 5),
            labelAttempt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
          
            labelYourAttempt.topAnchor.constraint(equalTo: labelAttempt.bottomAnchor, constant: 10),
            labelYourAttempt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonPlayyAgain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            buttonPlayyAgain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 62),
            buttonPlayyAgain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -54),
            buttonPlayyAgain.heightAnchor.constraint(equalToConstant: 100),
            
            
            buttonExit.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -84),
            buttonExit.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 62),
            buttonExit.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -54),
            buttonExit.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}
