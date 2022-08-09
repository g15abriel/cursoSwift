//
//  managerQuiz.swift
//  miniQuiz
//
//  Created by ICMMAC07-13C3 on 09/08/22.
//

import Foundation

class managerQuiz {
    private let QUIZES : [Quiz] = [
        Quiz(QUESTION: "2 + 2", OPTIONS: ["2","4","6","8"], INDEX_CORRECT_ANSWER: 1),
        Quiz(QUESTION: "3 x 4", OPTIONS: ["7","9","11","12"], INDEX_CORRECT_ANSWER: 3),
        Quiz(QUESTION: "100 / 5", OPTIONS: ["5","10","20","25"], INDEX_CORRECT_ANSWER: 2)]
    private var index = 0
    
    func showQuiz() -> Quiz{
        let quiz = QUIZES[index]
        index = index + 1
        return quiz
    }
    
    func correctAnswer(correctIndex:Int) -> Bool{
        print(QUIZES[index-1].INDEX_CORRECT_ANSWER)
        print(correctIndex)
        if QUIZES[index-1].INDEX_CORRECT_ANSWER == correctIndex {
            return true
        } else {
            return false
        }
    }
    
    func testFinalQuiz() -> Bool{
        if index < QUIZES.count {
            return true
        } else {
            return false
        }
    }
    
}
