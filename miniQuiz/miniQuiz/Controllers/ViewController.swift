//
//  ViewController.swift
//  miniQuiz
//
//  Created by ICMMAC07-13C3 on 09/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btOptions: [UIButton]!
    var managerQuizes = managerQuiz()
    var quiz: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadQuiz()
    }

    @IBAction func btSendAnswer(_ sender: UIButton) {
        if managerQuizes.correctAnswer(correctIndex: btOptions.firstIndex(of: sender)!) {
            reloadQuiz()
        }
    }
    
    func reloadQuiz(){
        let check = managerQuizes.testFinalQuiz()
        if check {
            quiz = managerQuizes.showQuiz()
            lbQuestion.text = quiz.QUESTION
            btOptions[0].setTitle(quiz.OPTIONS[0], for: .normal)
            btOptions[1].setTitle(quiz.OPTIONS[1], for: .normal)
            btOptions[2].setTitle(quiz.OPTIONS[2], for: .normal)
            btOptions[3].setTitle(quiz.OPTIONS[3], for: .normal)
        } else {
            lbQuestion.text = "Chegou ao final"
        }
    }
    
}

