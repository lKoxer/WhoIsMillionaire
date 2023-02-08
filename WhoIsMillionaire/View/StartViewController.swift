//
//  StartViewController.swift
//  WhoIsMillionaire
//
//  Created by Kox on 04.02.2023.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
  
    
    let backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logoView: UIImageView = {
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var startButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.1921568627, blue: 0.2980392157, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.borderColor = #colorLiteral(red: 0.737254902, green: 0.6235294118, blue: 0.9215686275, alpha: 1)
        button.layer.borderWidth = 5
        button.setTitle("Новая игра", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var rulesButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.1921568627, blue: 0.2980392157, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.8196078431, blue: 0.5137254902, alpha: 1)
        button.layer.borderWidth = 5
        button.setTitle("Правила игры", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(rulesButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundView)
        view.addSubview(logoView)
        view.addSubview(startButton)
        view.addSubview(rulesButton)
        
        setupConstraints()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -130),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            startButton.heightAnchor.constraint(equalToConstant: 60),

            rulesButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            rulesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            rulesButton.heightAnchor.constraint(equalToConstant: 60),

            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            logoView.widthAnchor.constraint(equalToConstant: 225),
            logoView.heightAnchor.constraint(equalToConstant: 225)
        ])
    }
    
    @objc func startButtonPressed() {
        let gameStartVC = GameViewController()
        self.navigationController?.pushViewController(gameStartVC, animated: true)
    }
    
    @objc func rulesButtonPressed() {
        let rulesVC = RulesViewController()
        self.navigationController?.pushViewController(rulesVC, animated: true)
    }
    
}
