//
//
//  GamrControllerLogic.swift
//  WhoIsMillionaire
//
//  Created by Pavel Reshetov on 09.02.2023.
//

import Foundation
import UIKit
import AVFoundation


extension GameViewController { // вынес логику действий в игре в отдельный файл
    
    func answerButtonAction() {
        for button in [answerButtonA, answerButtonB, answerButtonC, answerButtonD] {
            button.addTarget(self, action: #selector(answerButtonPressed), for: .touchUpInside)
        }
    }
    
    @objc func answerButtonPressed(_ sender: UIButton) {
        
        // ставим кнопкам ответы
        guard let userAnswer = sender.currentTitle else { return print("answersMistake") }
        // проверяем ответ, то меняем фон кнопки на соотвествующий
        let userGotItRight = questionModel.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            
            // действие при верном ответе
            sender.setBackgroundImage(UIImage(named: "correctAnswerImage"), for: .normal)
            questionModel.nextQuestion()
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            // музыка
            guard let url = Bundle.main.url(forResource: "correctEasyAnswerSound", withExtension: "mp3") else { return }
            do {
                player = try AVAudioPlayer(contentsOf: url)
            } catch {
                print ("sound error")
            }
            // затем снова главная музыка
            player.play()
            
        } else {
            
            sender.setBackgroundImage(UIImage(named: "incorrectAnswerImage"), for: .normal)
            // таймер при нажатии кнопки неверного ответа
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(gameOver), userInfo: nil, repeats: false)
        }
     
    }
    
    // логика смены вопроса на экране
    @objc func updateUI() {
        playMainSound()
  
        // след вопрос на экране
        questionLabel.text = questionModel.getQuestionText()
        
        // нам нужно добраться до ответов и адаптировать заголовки кнопок под эти ответы
        let answerChoices = questionModel.getAnswers()
        answerButtonA.setTitle(answerChoices[0], for: .normal)
        answerButtonB.setTitle(answerChoices[1], for: .normal)
        answerButtonC.setTitle(answerChoices[2], for: .normal)
        answerButtonD.setTitle(answerChoices[3], for: .normal)
        questionSummLabel.text = questionModel.score
        answerButtonSetup()
        questionNumberLabel.text = "Вопрос \(questionModel.questionNumber + 1)"
    }
    
    // неверный ответ - музыка
    @objc func gameOver() {
        // музыка неверного ответа
            guard let url = Bundle.main.url(forResource: "incorrectAnswerSound", withExtension: "mp3") else { return }
            do {
                player = try AVAudioPlayer(contentsOf: url)
            } catch {
                print ("sound error")
            }
            player.play()
        
        // переход на экран результата
        let resultVC = ResultViewController()
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
}

