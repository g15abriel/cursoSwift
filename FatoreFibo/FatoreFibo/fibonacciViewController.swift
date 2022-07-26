//
//  fibonacciViewController.swift
//  FatoreFibo
//
//  Created by ICMMAC09-BF7F on 26/07/22.
//

import UIKit

class fibonacciViewController: UIViewController {
    
    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btCalcular(_ sender: Any) {
        if let termo = Int(tfNumber.text!){
            var ultimoTermo = 1
            var penultimoTermo = 0
            var resultado = 1
            if termo > 1{
                for i in 1...(termo-1) {
                    resultado = ultimoTermo + penultimoTermo
                    penultimoTermo = ultimoTermo
                    ultimoTermo = resultado
                    print(i)
                }
            }
            lbResult.text = "\(resultado)"
            view.endEditing(true)
        } else {
            lbResult.text = "Entrada não válida!"
        }
        tfNumber.text = ""
    }
    
}
