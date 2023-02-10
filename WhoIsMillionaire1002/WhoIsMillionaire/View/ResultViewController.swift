//
//  resultViewController.swift
//  WhoIsMillionaire
//
//  Created by Николай on 06.02.2023.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    let backgroundImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logoView: UIImageView = {
       let logoImage = UIImageView ()
        logoImage.image = UIImage(named: "image max")
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
    
    
    lazy var buttonPlayyAgain: UIButton = {
        let buttonPlayAgain = UIButton(type: .system)
        buttonPlayAgain.setTitle("PLAY AGAIN", for:.normal)
        buttonPlayAgain.titleLabel?.font = UIFont(name: "Roboto", size: 5)
        buttonPlayAgain.backgroundColor = .green
        buttonPlayAgain.addTarget(self, action: #selector(playAgainButtonPressed), for: .touchUpInside)
        buttonPlayAgain.translatesAutoresizingMaskIntoConstraints = false
        return buttonPlayAgain
    }()
    
    lazy var buttonExit: UIButton = {
        let buttonExit = UIButton(type: .system)
        
        buttonExit.setTitle("EXIT", for: .normal)
        buttonExit.titleLabel?.textColor = UIColor.white
        buttonExit.titleLabel?.font = UIFont(name: "Roboto", size: 55)
        buttonExit.backgroundColor = .green
        buttonExit.addTarget(self, action: #selector(exitButtonPressed), for: .touchUpInside)
        buttonExit.translatesAutoresizingMaskIntoConstraints = false
        return buttonExit
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstaints()
        self.navigationItem.hidesBackButton = true
    }
        
        func setupView() {
            view.addSubview(backgroundImageView)
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


extension ResultViewController {
    
    func setupConstaints() {
        NSLayoutConstraint.activate ([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
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
