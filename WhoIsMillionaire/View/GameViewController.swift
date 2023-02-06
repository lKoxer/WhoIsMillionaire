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
    
    // кнопка стоп
    var stopLogoButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 0, y: 0, width: 201, height: 201)
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
//        label.layer.borderColor = .init(red: 0.106, green: 0.533, blue: 0.898, alpha: 1)
//        label.layer.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
//        label.layer.borderWidth = 4
        label.text = "30"
        label.textColor = .white
        label.textAlignment = .center
//        label.frame = CGRect(x: 0, y: 0, width: 91, height: 91)
        label.layer.cornerRadius = label.frame.width / 2
        label.font = UIFont(name: "Roboto-Medium", size: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл номера вопроса
    let questionNumberLabel: UILabel = {
        let label = UILabel()
//        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
//        label.layer.borderWidth = 4
        label.text = "Question 1"
        label.textColor = .white
        label.textAlignment = .left
//        label.frame = CGRect(x: 0, y: 0, width: 71, height: 71)
//        label.layer.cornerRadius = label.frame.width / 2
        label.font = UIFont(name: "Roboto-Medium", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл суммы вопроса
    let questionSummLabel: UILabel = {
        let label = UILabel()
//        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
//        label.layer.borderWidth = 4
        label.text = "500 RUB"
        label.textAlignment = .right
        label.layer.cornerRadius = 10
        label.textColor = .white
//        label.frame = CGRect(x: 0, y: 0, width: 300, height: 80)
        label.font = UIFont(name: "Roboto-Medium", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл вопросов
    let questionLabel: UILabel = {
        let label = UILabel()
//        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
//        label.layer.borderWidth = 2
        label.text = "Here a place for my question!"
        label.numberOfLines = 0
        label.textAlignment = .left
//        label.layer.cornerRadius = 10
        label.textColor = .white
//        label.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
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
        view.backgroundColor = #colorLiteral(red: 0.4513477087, green: 0.4857000113, blue: 0.5633345246, alpha: 1)
        playSound()
        setupUI()
        roundTimer()
    }
    
    //
    
    // метод настройки кнопок опций
    func optionButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 25
        button.frame = CGRect(x: 0, y: 0, width: 105, height: 81)
        button.showsTouchWhenHighlighted = true
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // метод настройки кнопок ответа
    func answerButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 10
//        button.titleLabel?.textAlignment = .left
        button.frame = CGRect(x: 0, y: 0, width: 321, height: 54)
        button.showsTouchWhenHighlighted = true
        button.titleLabel?.font = .systemFont(ofSize: 12)
    }
    
    // метод отсчета таймера
    func roundTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimerLabel), userInfo: nil, repeats: true)
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
       
        // пишем заголовки кнопкам
//        stopButton.setTitle("СТОП", for: .normal)
//        fiftyFiftyButton.setTitle("50:50", for: .normal)
//        hallHelpButton.setTitle("Зал", for: .normal)
//        callToFriendButton.setTitle("Звонок", for: .normal)
        
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
//        view.addSubview(timerLabel)
//        view.addSubview(stopButton)
//        view.addSubview(questionNumberLabel)
//        view.addSubview(questionSummLabel)
//        view.addSubview(questionLabel)
        view.addSubview(answerStackView)
        view.addSubview(optionStackView)
        
        // расставляем констрейнты
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
//            stopButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            stopButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            stopButton.heightAnchor.constraint(equalToConstant: 71),
//            stopButton.widthAnchor.constraint(equalToConstant: 71),
//
//            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            timerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            timerLabel.heightAnchor.constraint(equalToConstant: 71),
//            timerLabel.widthAnchor.constraint(equalToConstant: 71),
//
//
//            questionNumberLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            questionNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            questionNumberLabel.heightAnchor.constraint(equalToConstant: 71),
//            questionNumberLabel.widthAnchor.constraint(equalToConstant: 71),
            
//            questionSummLabel.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 30),
//            questionSummLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            questionSummLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            questionSummLabel.heightAnchor.constraint(equalToConstant: 60),
//
//            questionLabel.topAnchor.constraint(equalTo: questionSummLabel.bottomAnchor, constant: 16),
//            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            questionLabel.heightAnchor.constraint(equalToConstant: 160),
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
