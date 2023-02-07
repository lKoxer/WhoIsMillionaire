//
//  GameViewController.swift
//  WhoIsMillionaire
//
//  Created by Pavel Reshetov on 05.02.2023.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    
    // фоновое изображение
    var backgroundImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // круглые кнопки опций
    var fiftyFiftyButton = UIButton(type: .system)
    var hallHelpButton = UIButton(type: .system)
    var callToFriendButton = UIButton(type: .system)
    
    // кнопка стоп(лого игры)
    var stopLogoButton: UIButton = {
        let button = UIButton(type: .system)
        button.showsTouchWhenHighlighted = true
        button.setBackgroundImage(UIImage(named: "mainLogo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // таймер
    var timer = Timer()
    var totalTime = 30
    var secondPassed = 0
    
    // аудио
    var player = AVAudioPlayer() // player for sounds
    
    // лейбл таймера
    var timerLabel: UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "Roboto-Medium", size: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл номера вопроса
    let questionNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Question 1"
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Roboto-Medium", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл суммы вопроса
    let questionSummLabel: UILabel = {
        let label = UILabel()
        label.text = "500 RUB"
        label.textAlignment = .right
        label.layer.cornerRadius = 10
        label.textColor = .white
        label.font = UIFont(name: "Roboto-Medium", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл вопросов
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Here a place for my question!"
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "Roboto-Medium", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // кнопки ответа
    let answerButtonA = UIButton()
    let answerButtonB = UIButton()
    let answerButtonC = UIButton()
    let answerButtonD = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        setupUI()
        roundTimer()
    }
    
    // метод настройки кнопок опций
    func optionButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 25
        button.showsTouchWhenHighlighted = true
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // метод настройки кнопок ответа
    func answerButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 10
        button.showsTouchWhenHighlighted = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
    }
    
    //MARK: - Таймер и музыка
    func roundTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(updateTimerLabel),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func updateTimerLabel() {
        if secondPassed < totalTime {
            totalTime -= 1
            timerLabel.text = String(totalTime)
        } else {
            timer.invalidate()
        }
    }
    
    // метод воспр. музыки
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
        optionButtonSetup(button: stopLogoButton)
        optionButtonSetup(button: fiftyFiftyButton)
        optionButtonSetup(button: callToFriendButton)
        optionButtonSetup(button: hallHelpButton)
        
        // задаем изображения кнопкам опций
        fiftyFiftyButton.setBackgroundImage(UIImage(named: "fiftyFifty"), for: .normal)
        callToFriendButton.setBackgroundImage(UIImage(named: "friendCall"), for: .normal)
        hallHelpButton.setBackgroundImage(UIImage(named: "hallHelp"), for: .normal)
        
        //задаем изображение кнопкам ответа
        for button in [answerButtonA, answerButtonB, answerButtonC, answerButtonD] {
            button.setBackgroundImage(UIImage(named: "answerButtonBackground"), for: .normal)
        }
        
        // настройка кнопок ответа
        answerButtonSetup(button: answerButtonA)
        answerButtonSetup(button: answerButtonB)
        answerButtonSetup(button: answerButtonC)
        answerButtonSetup(button: answerButtonD)
       
        // временно пропишем имена кнопкам выбора
        answerButtonA.setTitle("A", for: .normal)
        answerButtonB.setTitle("B", for: .normal)
        answerButtonC.setTitle("C", for: .normal)
        answerButtonD.setTitle("D", for: .normal)
        
        // верхний стэк из лого-кнопки и вопроса
        let logoQuestionStackView = UIStackView(arrangedSubviews: [stopLogoButton, questionLabel])
        logoQuestionStackView.axis = .horizontal
        logoQuestionStackView.alignment = .fill
        logoQuestionStackView.spacing = 40
        logoQuestionStackView.distribution = .fill
        logoQuestionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // стэк из лейбла номера вопроса, таймера и суммы
        let questionSummStackView = UIStackView(arrangedSubviews: [questionNumberLabel, timerLabel, questionSummLabel])
        questionSummStackView.axis = .horizontal
        questionSummStackView.alignment = .center
        questionSummStackView.spacing = 60
        questionSummStackView.distribution = .equalCentering
        questionSummStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // создаем стэк из кнопок опций
        let optionStackView = UIStackView(arrangedSubviews: [fiftyFiftyButton, callToFriendButton, hallHelpButton])
        optionStackView.axis = .horizontal
        optionStackView.alignment = .fill
        optionStackView.spacing = 70
        optionStackView.distribution = .fillEqually
        optionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // создаем вертикальный стэк из кнопок выбора ответа
        let answerStackView = UIStackView(arrangedSubviews: [answerButtonA, answerButtonB, answerButtonC, answerButtonD])
        answerStackView.axis = .vertical
        answerStackView.alignment = .fill
        answerStackView.spacing = 12
        answerStackView.distribution = .fillEqually
        answerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // добавляем элементы на вью
        view.addSubview(backgroundImageView)
        view.addSubview(logoQuestionStackView)
        view.addSubview(questionSummStackView)
        view.addSubview(answerStackView)
        view.addSubview(optionStackView)
        
        // расставляем констрейнты
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
 
            logoQuestionStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            logoQuestionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            logoQuestionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            logoQuestionStackView.heightAnchor.constraint(equalToConstant: 80),
            
            questionSummStackView.topAnchor.constraint(equalTo: logoQuestionStackView.bottomAnchor, constant: 16),
            questionSummStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            questionSummStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            questionSummStackView.heightAnchor.constraint(equalToConstant: 95),
            
            answerStackView.topAnchor.constraint(equalTo: questionSummStackView.bottomAnchor, constant: 16),
            answerStackView.bottomAnchor.constraint(equalTo: optionStackView.topAnchor, constant: -30),
            answerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            answerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            optionStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            optionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            optionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            optionStackView.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }

}