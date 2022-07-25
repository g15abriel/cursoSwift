//
//  ViewController.swift
//  MyName
//
//  Created by ICMMAC09-BF7F on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    var check = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btShowResult(_ sender: UIButton) {
        if check {
            lbResult.text = "Gabriel Santos"
            sender.setTitle("Question", for: .normal)
        } else {
            lbResult.text = "What´s my name?"
            sender.setTitle("Answer", for: .normal)
        }
        check = !check
    }
    
}

