//
//  fatoreViewController.swift
//  FatoreFibo
//
//  Created by ICMMAC09-BF7F on 26/07/22.
//

import UIKit

class fatoreViewController: UIViewController {
    
    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btCalcular(_ sender: Any) {
        if let number = Int(tfNumber.text!){
            var resultado = 1
            if number > 0 {
                for i in 1...number{
                    resultado = resultado*i
                }
                lbResult.text = "\(resultado)"
            }else {
                lbResult.text = "Entrada não válida!"
            }
        }else {
            lbResult.text = "Entrada não válida!"
        }
        view.endEditing(true)
        tfNumber.text = ""
    }
    
}
