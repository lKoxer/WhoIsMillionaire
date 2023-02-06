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
    
    // таймер
    var timer = Timer()
    var totalTime = 30
    var secondPassed = 0
    
    // аудио
    var player = AVAudioPlayer() // player for sounds
    
    // лейбл таймера
    var timerLabel: UILabel = {
        let label = UILabel()
        label.layer.borderColor = .init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
        label.layer.borderWidth = 4
        label.text = "30"
        label.textColor = .black
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 71, height: 71)
        label.layer.cornerRadius = label.frame.width / 2
        label.font = UIFont(name: "Arial Italic", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл номера вопроса
    let questionNumberLabel: UILabel = {
        let label = UILabel()
        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
        label.layer.borderWidth = 4
        label.text = "1"
        label.textColor = .black
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 71, height: 71)
        label.layer.cornerRadius = label.frame.width / 2
        label.font = UIFont(name: "Arial Italic", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // лейбл суммы вопроса
    let questionSummLabel: UILabel = {
        let label = UILabel()
        label.layer.borderColor = CGColor.init(red: 1, green: 0.5, blue: 0.5, alpha: 1)
        label.layer.borderWidth = 4
        label.text = "Вопрос на сумму ..."
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.textColor = .black
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 80)
        label.font = UIFont(name: "Arial Italic", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
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
        button.layer.cornerRadius = 10
//        button.frame = CGRect(x: 0, y: 0, width: 80, height: 40)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(.black, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.titleLabel?.font = .systemFont(ofSize: 10)
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // метод настройки кнопок ответа
    func answerButtonSetup(button: UIButton) {
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.black
        button.setTitleColor(.white, for: .normal)
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
        optionButtonSetup(button: stopButton)
        optionButtonSetup(button: fiftyFiftyButton)
        optionButtonSetup(button: hallHelpButton)
        optionButtonSetup(button: callToFriendButton)
        
        // настройка кнопок ответа
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
        let optionStackView = UIStackView(arrangedSubviews: [fiftyFiftyButton, callToFriendButton, hallHelpButton])
        optionStackView.axis = .horizontal
        optionStackView.alignment = .fill
        optionStackView.spacing = 30
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
        view.addSubview(timerLabel)
        view.addSubview(stopButton)
        view.addSubview(questionNumberLabel)
        view.addSubview(questionSummLabel)
        view.addSubview(questionLabel)
        view.addSubview(answerStackView)
        view.addSubview(optionStackView)

        
        // расставляем констрейнты
        NSLayoutConstraint.activate([
            
            stopButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stopButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            stopButton.heightAnchor.constraint(equalToConstant: 71),
            stopButton.widthAnchor.constraint(equalToConstant: 71),
            
            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            timerLabel.heightAnchor.constraint(equalToConstant: 71),
            timerLabel.widthAnchor.constraint(equalToConstant: 71),
            
            
            questionNumberLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            questionNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            questionNumberLabel.heightAnchor.constraint(equalToConstant: 71),
            questionNumberLabel.widthAnchor.constraint(equalToConstant: 71),
            
            questionSummLabel.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 30),
            questionSummLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            questionSummLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            questionSummLabel.heightAnchor.constraint(equalToConstant: 60),
            
            questionLabel.topAnchor.constraint(equalTo: questionSummLabel.bottomAnchor, constant: 16),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            questionLabel.heightAnchor.constraint(equalToConstant: 160),
            
            answerStackView.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 16),
            answerStackView.bottomAnchor.constraint(equalTo: optionStackView.topAnchor, constant: -30),
            answerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            answerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            optionStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            optionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            optionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            optionStackView.heightAnchor.constraint(equalToConstant: 30)
        
        ])
    }

}
