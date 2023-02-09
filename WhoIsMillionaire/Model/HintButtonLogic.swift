//
//  AnswerButtonLogic.swift
//  WhoIsMillionaire
//
//  Created by Pavel Reshetov on 09.02.2023.
//

import Foundation
import UIKit

extension GameViewController {
    
//MARK: - 50:50
    
    func fiftyFiftyLogic() {
        fiftyFiftyButton.addTarget(self, action: #selector(fiftyFiftyAction), for: .touchUpInside)
    }
    
    @objc func fiftyFiftyAction() {
        
            let answerButtonArray = [answerButtonA, answerButtonB, answerButtonC, answerButtonD]
        
            var counter = 0
            var previouslyNumber = -1

            while counter != 2 {
                let number = Int.random(in: 0...3)
                let userAnswer = answerButtonArray[number].titleLabel?.text

                guard
                    number != previouslyNumber,
                    questionModel.checkAnswer(userAnswer: userAnswer ?? "") == false
                else { continue }

                answerButtonCofigure(by: number)
                previouslyNumber = number
                counter += 1
            }
    }
    
    func answerButtonCofigure(by index: Int) {
        let answerButtonArray = [answerButtonA, answerButtonB, answerButtonC, answerButtonD]
        answerButtonArray[index].setTitle(" ", for: .normal)
    }
    
    //MARK: - звонок другу
    /////
    
    
}
