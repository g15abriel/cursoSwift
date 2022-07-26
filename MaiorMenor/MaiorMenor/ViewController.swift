//
//  ViewController.swift
//  MaiorMenor
//
//  Created by ICMMAC09-BF7F on 26/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var vResult: UIView!
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btShowResult(_ sender: Any) {
        if let number = Double(tfNumber.text!) {
            if number >= 10.0{
                lbResult.text = "O número \(number) é maior ou igual a 10!"
            }else {
                lbResult.text = "O número \(number) é menor que 10!"
            }
        }else {
            lbResult.text = "O entrada não é válida!"
        }
        vResult.isHidden = false
        view.endEditing(true)
        tfNumber.text = ""
    }
    @IBAction func btCloseView(_ sender: Any) {
        vResult.isHidden = true
    }
    
}

