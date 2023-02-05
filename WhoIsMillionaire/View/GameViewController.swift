//
//  GameViewController.swift
//  WhoIsMillionaire
//
//  Created by Pavel Reshetov on 05.02.2023.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    
    // круглые кнопки опций
    var stopButton = UIButton(type: .system)
    var fiftyFiftyButton = UIButton(type: .system)
    var hallHelpButton = UIButton(type: .system)
    var callToFriendButton = UIButton(type: .system)
    var player = AVAudioPlayer() // player for sounds
    
    // лейбл номера вопроса
    let questionNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 10)
        label.font = UIFont(name: "Arial Italic", size: 20)
        return label
    }()
    
    // лейбл вопросов
    let questionLabel: UILabel = {
        let label = UILabel()
        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
        label.layer.borderWidth = 2
        label.text = "Here a place for my question!"
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.textColor = .black
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        label.font = UIFont(name: "Arial Italic", size: 20)
        return label
    }()
    
    // кнопки ответа
    let answerButtonA = UIButton()
    let answerButtonB = UIButton()
    let answerButtonC = UIButton()
    let answerButtonD = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4513477087, green: 0.4857000113, blue: 0.5633345246, alpha: 1)
        playSound()
        setupUI()
    }
    
    // функция настройки кнопок опций
    func optionButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 40)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(.black, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.titleLabel?.font = .systemFont(ofSize: 10)
    }
    
    // функция настройки кнопок ответа
    func answerButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 10
//        button.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
        button.backgroundColor = UIColor.black
        button.setTitleColor(.white, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.titleLabel?.font = .systemFont(ofSize: 12)

    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "mainSound", withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print ("sound error")
        }
        player.play()
    }
    
    //MARK: - UISetup
    func setupUI() {
        // настройка кнопок опций
        optionButtonSetup(button: stopButton)
        optionButtonSetup(button: fiftyFiftyButton)
        optionButtonSetup(button: hallHelpButton)
        optionButtonSetup(button: callToFriendButton)
        
        // настройка кноаок ответа
        answerButtonSetup(button: answerButtonA)
        answerButtonSetup(button: answerButtonB)
        answerButtonSetup(button: answerButtonC)
        answerButtonSetup(button: answerButtonD)
       
        // пишем заголовки кнопкам
        stopButton.setTitle("СТОП", for: .normal)
        fiftyFiftyButton.setTitle("50:50", for: .normal)
        hallHelpButton.setTitle("Зал", for: .normal)
        callToFriendButton.setTitle("Звонок", for: .normal)
        
        // временно пропишем имена кнопкам выбора
        answerButtonA.setTitle("A", for: .normal)
        answerButtonB.setTitle("B", for: .normal)
        answerButtonC.setTitle("C", for: .normal)
        answerButtonD.setTitle("D", for: .normal)
        
        // создаем стэк из кнопок опций
        let optionStackView = UIStackView(arrangedSubviews: [stopButton, fiftyFiftyButton, callToFriendButton, hallHelpButton])
        optionStackView.axis = .horizontal
        optionStackView.alignment = .fill
        optionStackView.spacing = 10
        optionStackView.distribution = .fillEqually
        optionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // создаем вертикальный стэк из лейбла номера вопроса и лейбла с текстом вопроса
        let labelStackView =  UIStackView(arrangedSubviews: [questionNumberLabel, questionLabel])
        labelStackView.axis = .vertical
        labelStackView.alignment = .fill
        labelStackView.spacing = 0
        labelStackView.distribution = .fillProportionally
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        // создаем вертикальный стэк из кнопок выбора ответа
        
        let answerStackView = UIStackView(arrangedSubviews: [answerButtonA, answerButtonB, answerButtonC, answerButtonD])
        answerStackView.axis = .vertical
        answerStackView.alignment = .fill
        answerStackView.spacing = 12
        answerStackView.distribution = .fillEqually
        answerStackView.translatesAutoresizingMaskIntoConstraints = false
    
        
        // добавляем элементы на вью
        view.addSubview(optionStackView)
        view.addSubview(labelStackView)
//        view.addSubview(questionNumberLabel)
//        view.addSubview(questionLabel)
        view.addSubview(answerStackView)
        
        // расставляем констрейнты
        NSLayoutConstraint.activate([
            
            optionStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            optionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            optionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            optionStackView.heightAnchor.constraint(equalToConstant: 40),
            

//            questionNumberLabel.topAnchor.constraint(equalTo: optionStackView.bottomAnchor, constant: 16),
//            questionNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            questionNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            questionNumberLabel.heightAnchor.constraint(equalToConstant: 20),
//
//            questionLabel.topAnchor.constraint(equalTo: questionNumberLabel.bottomAnchor, constant: 16),
//            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            questionLabel.heightAnchor.constraint(equalToConstant: 190),

            
            labelStackView.topAnchor.constraint(equalTo: optionStackView.bottomAnchor, constant: 0),
            labelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            labelStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelStackView.heightAnchor.constraint(equalToConstant: 200),
            
            answerStackView.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 40),
            answerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            answerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            answerStackView.heightAnchor.constraint(equalToConstant: 220)
    
        ])
        
    }
    
}
