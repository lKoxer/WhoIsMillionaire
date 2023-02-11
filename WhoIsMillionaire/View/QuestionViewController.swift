//
//  QuestionViewController.swift
//  WhoIsMillionaire
//
//  Created by Kox on 04.02.2023.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController {
    
    let logoView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image mini")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    let rectangleView15: UIImageView = {
        let imageView15 = UIImageView()
        imageView15.image = UIImage(named: "blue")
        imageView15.translatesAutoresizingMaskIntoConstraints = false
        return imageView15
    }()
    
    let rectangleView14: UIImageView = {
        let imageView14 = UIImageView()
        imageView14.image = UIImage(named: "violet")
        imageView14.translatesAutoresizingMaskIntoConstraints = false
        return imageView14
    }()
    
    let rectangleView13: UIImageView = {
        let imageView13 = UIImageView()
        imageView13.image = UIImage(named: "violet")
        imageView13.translatesAutoresizingMaskIntoConstraints = false
        return imageView13
    }()
    
    let rectangleView12: UIImageView = {
        let imageView12 = UIImageView()
        imageView12.image = UIImage(named: "violet")
        imageView12.translatesAutoresizingMaskIntoConstraints = false
        return imageView12
    }()
    
    let rectangleView11: UIImageView = {
        let imageView11 = UIImageView()
        imageView11.image = UIImage(named: "violet")
        imageView11.translatesAutoresizingMaskIntoConstraints = false
        return imageView11
    }()
    
    let rectangleView10: UIImageView = {
        let imageView10 = UIImageView()
        imageView10.image = UIImage(named: "blue")
        imageView10.translatesAutoresizingMaskIntoConstraints = false
        return imageView10
    }()
    
    let rectangleView9: UIImageView = {
        let imageView9 = UIImageView()
        imageView9.image = UIImage(named: "violet")
        imageView9.translatesAutoresizingMaskIntoConstraints = false
        return imageView9
    }()
    
    let rectangleView8: UIImageView = {
        let imageView8 = UIImageView()
        imageView8.image = UIImage(named: "violet")
        imageView8.translatesAutoresizingMaskIntoConstraints = false
        return imageView8
    }()
    
    let rectangleView7: UIImageView = {
        let imageView7 = UIImageView()
        imageView7.image = UIImage(named: "violet")
        imageView7.translatesAutoresizingMaskIntoConstraints = false
        return imageView7
    }()
    
    let rectangleView6: UIImageView = {
        let imageView6 = UIImageView()
        imageView6.image = UIImage(named: "violet")
        imageView6.translatesAutoresizingMaskIntoConstraints = false
        return imageView6
    }()
    
    let rectangleView5: UIImageView = {
        let imageView5 = UIImageView()
        imageView5.image = UIImage(named: "blue")
        imageView5.translatesAutoresizingMaskIntoConstraints = false
        return imageView5
    }()
    
    let rectangleView4: UIImageView = {
        let imageView4 = UIImageView()
        imageView4.image = UIImage(named: "violet")
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        return imageView4
    }()
    
    let rectangleView3: UIImageView = {
        let imageView3 = UIImageView()
        imageView3.image = UIImage(named: "violet")
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        return imageView3
    }()
    
    let rectangleView2: UIImageView = {
        let imageView2 = UIImageView()
        imageView2.image = UIImage(named: "violet")
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        return imageView2
    }()
    
    let rectangleView1: UIImageView = {
        let imageView1 = UIImageView()
        imageView1.image = UIImage(named: "violet")
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        return imageView1
    }()
    
    let labelQuestion15: UILabel = {
        let labelQuest15 = UILabel()
        labelQuest15.text = "Вопрос 15"
        labelQuest15.font = UIFont(name: "Roboto", size: 20)
        labelQuest15.textColor = .white
        labelQuest15.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest15
    }()
    
    let labelQuestion14: UILabel = {
        let labelQuest14 = UILabel()
        labelQuest14.text = "Вопрос 14"
        labelQuest14.font = UIFont(name: "Roboto", size: 20)
        labelQuest14.textColor = .white
        labelQuest14.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest14
    }()
    
    let labelQuestion13: UILabel = {
        let labelQuest13 = UILabel()
        labelQuest13.text = "Вопрос 13"
        labelQuest13.font = UIFont(name: "Roboto", size: 20)
        labelQuest13.textColor = .white
        labelQuest13.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest13
    }()
    
    let labelQuestion12: UILabel = {
        let labelQuest12 = UILabel()
        labelQuest12.text = "Вопрос 12"
        labelQuest12.font = UIFont(name: "Roboto", size: 20)
        labelQuest12.textColor = .white
        labelQuest12.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest12
    }()
    
    let labelQuestion11: UILabel = {
        let labelQuest11 = UILabel()
        labelQuest11.text = "Вопрос 11"
        labelQuest11.font = UIFont(name: "Roboto", size: 20)
        labelQuest11.textColor = .white
        labelQuest11.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest11
    }()
    
    
    let labelQuestion10: UILabel = {
        let labelQuest10 = UILabel()
        labelQuest10.text = "Вопрос 10"
        labelQuest10.font = UIFont(name: "Roboto", size: 20)
        labelQuest10.textColor = .white
        labelQuest10.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest10
    }()
    
    let labelQuestion9: UILabel = {
        let labelQuest9 = UILabel()
        labelQuest9.text = "Вопрос 9"
        labelQuest9.font = UIFont(name: "Roboto", size: 20)
        labelQuest9.textColor = .white
        labelQuest9.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest9
    }()
    
    let labelQuestion8: UILabel = {
        let labelQuest8 = UILabel()
        labelQuest8.text = "Вопрос 8"
        labelQuest8.font = UIFont(name: "Roboto", size: 20)
        labelQuest8.textColor = .white
        labelQuest8.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest8
    }()
    
    let labelQuestion7: UILabel = {
        let labelQuest7 = UILabel()
        labelQuest7.text = "Вопрос 7"
        labelQuest7.font = UIFont(name: "Roboto", size: 20)
        labelQuest7.textColor = .white
        labelQuest7.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest7
    }()
    
    
    let labelQuestion6: UILabel = {
        let labelQuest6 = UILabel()
        labelQuest6.text = "Вопрос 6"
        labelQuest6.font = UIFont(name: "Roboto", size: 20)
        labelQuest6.textColor = .white
        labelQuest6.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest6
    }()
    
    let labelQuestion5: UILabel = {
        let labelQuest5 = UILabel()
        labelQuest5.text = "Вопрос 5"
        labelQuest5.font = UIFont(name: "Roboto", size: 20)
        labelQuest5.textColor = .white
        labelQuest5.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest5
    }()
    
    let labelQuestion4: UILabel = {
        let labelQuest4 = UILabel()
        labelQuest4.text = "Вопрос 4"
        labelQuest4.font = UIFont(name: "Roboto", size: 20)
        labelQuest4.textColor = .white
        labelQuest4.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest4
    }()
    
    let labelQuestion3: UILabel = {
        let labelQuest3 = UILabel()
        labelQuest3.text = "Вопрос 3"
        labelQuest3.font = UIFont(name: "Roboto", size: 20)
        labelQuest3.textColor = .white
        labelQuest3.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest3
    }()
    
    let labelQuestion2: UILabel = {
        let labelQuest2 = UILabel()
        labelQuest2.text = "Вопрос 2"
        labelQuest2.font = UIFont(name: "Roboto", size: 20)
        labelQuest2.textColor = .white
        labelQuest2.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest2
    }()
    
    let labelQuestion1: UILabel = {
        let labelQuest1 = UILabel()
        labelQuest1.text = "Вопрос 1"
        labelQuest1.font = UIFont(name: "Roboto", size: 20)
        labelQuest1.textColor = .white
        labelQuest1.translatesAutoresizingMaskIntoConstraints = false
        return labelQuest1
    }()
    
    let labelPrice15: UILabel = {
        let labelPrice15 = UILabel()
        labelPrice15.text = "1 Миллион"
        labelPrice15.textColor = .white
        labelPrice15.font = UIFont(name: "Roboto", size: 20)
        labelPrice15.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice15
    }()
    
    let labelPrice14: UILabel = {
        let labelPrice14 = UILabel()
        labelPrice14.text = "500000 RUB"
        labelPrice14.textColor = .white
        labelPrice14.font = UIFont(name: "Roboto", size: 20)
        labelPrice14.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice14
    }()
    
    let labelPrice13: UILabel = {
        let labelPrice13 = UILabel()
        labelPrice13.text = "250000 RUB"
        labelPrice13.textColor = .white
        labelPrice13.font = UIFont(name: "Roboto", size: 20)
        labelPrice13.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice13
    }()
    
    let labelPrice12: UILabel = {
        let labelPrice12 = UILabel()
        labelPrice12.text = "125000 RUB"
        labelPrice12.textColor = .white
        labelPrice12.font = UIFont(name: "Roboto", size: 20)
        labelPrice12.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice12
    }()
    
    let labelPrice11: UILabel = {
        let labelPrice11 = UILabel()
        labelPrice11.text = "64000 RUB"
        labelPrice11.textColor = .white
        labelPrice11.font = UIFont(name: "Roboto", size: 20)
        labelPrice11.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice11
    }()
    
    let labelPrice10: UILabel = {
        let labelPrice10 = UILabel()
        labelPrice10.text = "32000 RUB"
        labelPrice10.textColor = .white
        labelPrice10.font = UIFont(name: "Roboto", size: 20)
        labelPrice10.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice10
    }()
    
    let labelPrice9: UILabel = {
        let labelPrice9 = UILabel()
        labelPrice9.text = "16000 RUB"
        labelPrice9.textColor = .white
        labelPrice9.font = UIFont(name: "Roboto", size: 20)
        labelPrice9.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice9
    }()
    
    let labelPrice8: UILabel = {
        let labelPrice8 = UILabel()
        labelPrice8.text = "8000 RUB"
        labelPrice8.textColor = .white
        labelPrice8.font = UIFont(name: "Roboto", size: 20)
        labelPrice8.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice8
    }()
    
    let labelPrice7: UILabel = {
        let labelPrice7 = UILabel()
        labelPrice7.text = "4000 RUB"
        labelPrice7.textColor = .white
        labelPrice7.font = UIFont(name: "Roboto", size: 20)
        labelPrice7.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice7
    }()
    
    let labelPrice6: UILabel = {
        let labelPrice6 = UILabel()
        labelPrice6.text = "2000 RUB"
        labelPrice6.textColor = .white
        labelPrice6.font = UIFont(name: "Roboto", size: 20)
        labelPrice6.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice6
    }()
    
    let labelPrice5: UILabel = {
        let labelPrice5 = UILabel()
        labelPrice5.text = "1000 RUB"
        labelPrice5.textColor = .white
        labelPrice5.font = UIFont(name: "Roboto", size: 20)
        labelPrice5.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice5
    }()
    
    let labelPrice4: UILabel = {
        let labelPrice4 = UILabel()
        labelPrice4.text = "500 RUB"
        labelPrice4.textColor = .white
        labelPrice4.font = UIFont(name: "Roboto", size: 20)
        labelPrice4.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice4
    }()
    
    let labelPrice3: UILabel = {
        let labelPrice3 = UILabel()
        labelPrice3.text = "300 RUB"
        labelPrice3.textColor = .white
        labelPrice3.font = UIFont(name: "Roboto", size: 20)
        labelPrice3.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice3
    }()
    
    let labelPrice2: UILabel = {
        let labelPrice2 = UILabel()
        labelPrice2.text = "200 RUB"
        labelPrice2.textColor = .white
        labelPrice2.font = UIFont(name: "Roboto", size: 20)
        labelPrice2.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice2
    }()
    
    let labelPrice1: UILabel = {
        let labelPrice1 = UILabel()
        labelPrice1.text = "100 RUB"
        labelPrice1.textColor = .white
        labelPrice1.font = UIFont(name: "Roboto", size: 20)
        labelPrice1.translatesAutoresizingMaskIntoConstraints = false
        return labelPrice1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        setupView()
        setupConstaint()
       
        let backButtonItem = UIBarButtonItem(title: "Custom Back", style: .plain, target: self, action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem = backButtonItem
        backButtonItem.title = "К игре"
    }
    
    @objc func backButtonTapped() {
        let gameVC = GameViewController()
        self.navigationController?.pushViewController(gameVC, animated: true)
        gameVC.updateUI()
        
    }
    
    
    func setupView () {
        view.addSubview(logoView)
        view.addSubview(rectangleView15)
        view.addSubview(rectangleView14)
        view.addSubview(rectangleView13)
        view.addSubview(rectangleView12)
        view.addSubview(rectangleView11)
        view.addSubview(rectangleView10)
        view.addSubview(rectangleView9)
        view.addSubview(rectangleView8)
        view.addSubview(rectangleView7)
        view.addSubview(rectangleView6)
        view.addSubview(rectangleView5)
        view.addSubview(rectangleView4)
        view.addSubview(rectangleView3)
        view.addSubview(rectangleView2)
        view.addSubview(rectangleView1)
        view.addSubview(labelQuestion15)
        view.addSubview(labelQuestion14)
        view.addSubview(labelQuestion13)
        view.addSubview(labelQuestion12)
        view.addSubview(labelQuestion11)
        view.addSubview(labelQuestion10)
        view.addSubview(labelQuestion9)
        view.addSubview(labelQuestion8)
        view.addSubview(labelQuestion7)
        view.addSubview(labelQuestion6)
        view.addSubview(labelQuestion5)
        view.addSubview(labelQuestion4)
        view.addSubview(labelQuestion3)
        view.addSubview(labelQuestion2)
        view.addSubview(labelQuestion1)
        view.addSubview(labelPrice15)
        view.addSubview(labelPrice14)
        view.addSubview(labelPrice13)
        view.addSubview(labelPrice12)
        view.addSubview(labelPrice11)
        view.addSubview(labelPrice10)
        view.addSubview(labelPrice9)
        view.addSubview(labelPrice8)
        view.addSubview(labelPrice7)
        view.addSubview(labelPrice6)
        view.addSubview(labelPrice5)
        view.addSubview(labelPrice4)
        view.addSubview(labelPrice3)
        view.addSubview(labelPrice2)
        view.addSubview(labelPrice1)
    }

}

    extension QuestionViewController {
        func setupConstaint() {
            NSLayoutConstraint.activate ([
                logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView15.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 14),
                rectangleView15.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                rectangleView14.topAnchor.constraint(equalTo: rectangleView15.bottomAnchor, constant: 8),
                rectangleView14.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView13.topAnchor.constraint(equalTo: rectangleView14.bottomAnchor, constant: 8),
                rectangleView13.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView12.topAnchor.constraint(equalTo: rectangleView13.bottomAnchor, constant: 8),
                rectangleView12.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView11.topAnchor.constraint(equalTo: rectangleView12.bottomAnchor, constant: 8),
                rectangleView11.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView10.topAnchor.constraint(equalTo: rectangleView11.bottomAnchor, constant: 8),
                rectangleView10.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                rectangleView9.topAnchor.constraint(equalTo: rectangleView10.bottomAnchor, constant: 8),
                rectangleView9.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView8.topAnchor.constraint(equalTo: rectangleView9.bottomAnchor, constant: 8),
                rectangleView8.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                rectangleView7.topAnchor.constraint(equalTo: rectangleView8.bottomAnchor, constant: 8),
                rectangleView7.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView6.topAnchor.constraint(equalTo: rectangleView7.bottomAnchor, constant: 8),
                rectangleView6.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView5.topAnchor.constraint(equalTo: rectangleView6.bottomAnchor, constant: 8),
                rectangleView5.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView4.topAnchor.constraint(equalTo: rectangleView5.bottomAnchor, constant: 8),
                rectangleView4.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView3.topAnchor.constraint(equalTo: rectangleView4.bottomAnchor, constant: 8),
                rectangleView3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
                rectangleView2.topAnchor.constraint(equalTo: rectangleView3.bottomAnchor, constant: 8),
                rectangleView2.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                rectangleView1.topAnchor.constraint(equalTo: rectangleView2.bottomAnchor, constant: 8),
                rectangleView1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                labelQuestion15.topAnchor.constraint(equalTo: rectangleView15.topAnchor, constant: 8),
                labelQuestion15.leadingAnchor.constraint(equalTo: rectangleView15.leadingAnchor, constant: 20),
               
                labelQuestion14.topAnchor.constraint(equalTo: rectangleView14.topAnchor, constant: 8),
                labelQuestion14.leadingAnchor.constraint(equalTo: rectangleView14.leadingAnchor, constant: 20),
                
                labelQuestion13.topAnchor.constraint(equalTo: rectangleView13.topAnchor, constant: 8),
                labelQuestion13.leadingAnchor.constraint(equalTo: rectangleView13.leadingAnchor, constant: 20),
                
                labelQuestion12.topAnchor.constraint(equalTo: rectangleView12.topAnchor, constant: 8),
                labelQuestion12.leadingAnchor.constraint(equalTo: rectangleView12.leadingAnchor, constant: 20),
                
                labelQuestion11.topAnchor.constraint(equalTo: rectangleView11.topAnchor, constant: 8),
                labelQuestion11.leadingAnchor.constraint(equalTo: rectangleView11.leadingAnchor, constant: 20),
                
                labelQuestion10.topAnchor.constraint(equalTo: rectangleView10.topAnchor, constant: 8),
                labelQuestion10.leadingAnchor.constraint(equalTo: rectangleView10.leadingAnchor, constant: 20),
                
                labelQuestion9.topAnchor.constraint(equalTo: rectangleView9.topAnchor, constant: 8),
                labelQuestion9.leadingAnchor.constraint(equalTo: rectangleView9.leadingAnchor, constant: 20),
                
                labelQuestion8.topAnchor.constraint(equalTo: rectangleView8.topAnchor, constant: 8),
                labelQuestion8.leadingAnchor.constraint(equalTo: rectangleView8.leadingAnchor, constant: 20),
                
                labelQuestion7.topAnchor.constraint(equalTo: rectangleView7.topAnchor, constant: 8),
                labelQuestion7.leadingAnchor.constraint(equalTo: rectangleView7.leadingAnchor, constant: 20),
                
                labelQuestion6.topAnchor.constraint(equalTo: rectangleView6.topAnchor, constant: 8),
                labelQuestion6.leadingAnchor.constraint(equalTo: rectangleView6.leadingAnchor, constant: 20),
                
                labelQuestion5.topAnchor.constraint(equalTo: rectangleView5.topAnchor, constant: 8),
                labelQuestion5.leadingAnchor.constraint(equalTo: rectangleView5.leadingAnchor, constant: 20),
                
                labelQuestion4.topAnchor.constraint(equalTo: rectangleView4.topAnchor, constant: 8),
                labelQuestion4.leadingAnchor.constraint(equalTo: rectangleView4.leadingAnchor, constant: 20),
                
                labelQuestion3.topAnchor.constraint(equalTo: rectangleView3.topAnchor, constant: 8),
                labelQuestion3.leadingAnchor.constraint(equalTo: rectangleView3.leadingAnchor, constant: 20),
                
                labelQuestion2.topAnchor.constraint(equalTo: rectangleView2.topAnchor, constant: 8),
                labelQuestion2.leadingAnchor.constraint(equalTo: rectangleView2.leadingAnchor, constant: 20),
                
                labelQuestion1.topAnchor.constraint(equalTo: rectangleView1.topAnchor, constant: 8),
                labelQuestion1.leadingAnchor.constraint(equalTo: rectangleView1.leadingAnchor, constant: 20),
                
                labelPrice15.topAnchor.constraint(equalTo: rectangleView15.topAnchor, constant: 8),
                labelPrice15.trailingAnchor.constraint(equalTo: rectangleView15.trailingAnchor, constant: -20),
                
                labelPrice14.topAnchor.constraint(equalTo: rectangleView14.topAnchor, constant: 8),
                labelPrice14.trailingAnchor.constraint(equalTo: rectangleView14.trailingAnchor, constant: -20),
                
                labelPrice13.topAnchor.constraint(equalTo: rectangleView13.topAnchor, constant: 8),
                labelPrice13.trailingAnchor.constraint(equalTo: rectangleView13.trailingAnchor, constant: -20),
                
                labelPrice12.topAnchor.constraint(equalTo: rectangleView12.topAnchor, constant: 8),
                labelPrice12.trailingAnchor.constraint(equalTo: rectangleView12.trailingAnchor, constant: -20),
                
                labelPrice11.topAnchor.constraint(equalTo: rectangleView11.topAnchor, constant: 8),
                labelPrice11.trailingAnchor.constraint(equalTo: rectangleView11.trailingAnchor, constant: -20),
                
                labelPrice10.topAnchor.constraint(equalTo: rectangleView10.topAnchor, constant: 8),
                labelPrice10.trailingAnchor.constraint(equalTo: rectangleView10.trailingAnchor, constant: -20),
                
                labelPrice9.topAnchor.constraint(equalTo: rectangleView9.topAnchor, constant: 8),
                labelPrice9.trailingAnchor.constraint(equalTo: rectangleView9.trailingAnchor, constant: -20),
                
                labelPrice8.topAnchor.constraint(equalTo: rectangleView8.topAnchor, constant: 8),
                labelPrice8.trailingAnchor.constraint(equalTo: rectangleView8.trailingAnchor, constant: -20),
                
                labelPrice7.topAnchor.constraint(equalTo: rectangleView7.topAnchor, constant: 8),
                labelPrice7.trailingAnchor.constraint(equalTo: rectangleView7.trailingAnchor, constant: -20),
                
                labelPrice6.topAnchor.constraint(equalTo: rectangleView6.topAnchor, constant: 8),
                labelPrice6.trailingAnchor.constraint(equalTo: rectangleView6.trailingAnchor, constant: -20),
                
                labelPrice5.topAnchor.constraint(equalTo: rectangleView5.topAnchor, constant: 8),
                labelPrice5.trailingAnchor.constraint(equalTo: rectangleView5.trailingAnchor, constant: -20),
                
                labelPrice4.topAnchor.constraint(equalTo: rectangleView4.topAnchor, constant: 8),
                labelPrice4.trailingAnchor.constraint(equalTo: rectangleView4.trailingAnchor, constant: -20),
                
                labelPrice3.topAnchor.constraint(equalTo: rectangleView3.topAnchor, constant: 8),
                labelPrice3.trailingAnchor.constraint(equalTo: rectangleView3.trailingAnchor, constant: -20),
                
                labelPrice2.topAnchor.constraint(equalTo: rectangleView2.topAnchor, constant: 8),
                labelPrice2.trailingAnchor.constraint(equalTo: rectangleView2.trailingAnchor, constant: -20),
                
                labelPrice1.topAnchor.constraint(equalTo: rectangleView1.topAnchor, constant: 8),
                labelPrice1.trailingAnchor.constraint(equalTo: rectangleView1.trailingAnchor, constant: -20),
            ])
        
    }
}
