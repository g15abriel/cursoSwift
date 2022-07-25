//
//  ViewController.swift
//  Sum
//
//  Created by ICMMAC09-BF7F on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber1: UITextField!
    @IBOutlet weak var tfNumber2: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    var number1 = 0.0
    var number2 = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btShowResult(_ sender: Any) {
        number1 = Double(tfNumber1.text!) ?? 0.0
        number2 = Double(tfNumber2.text!) ?? 0.0
        let sum = floor((number1 + number2)*100)/100
        lbResult.text = "\(sum)"
        view.endEditing(true)
    }

}

