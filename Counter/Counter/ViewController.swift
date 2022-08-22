//
//  ViewController.swift
//  Counter
//
//  Created by ICMMAC07-13C3 on 22/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var textDica: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var btIniciar: UIButton!
    @IBOutlet weak var viewCounter: UIView!
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func iniciar(_ sender: Any) {
        count.text = input.text
        counter = Int(count.text!) ?? 0
        
        input.text = ""
        
        viewCounter.isHidden = false
        multiplos10()
        view.endEditing(true)
    }
    
    @IBAction func closeView(_ sender: Any) {
        viewCounter.isHidden = true
        textDica.text = "Digite um número para começar."
    }
    
    @IBAction func plus(_ sender: Any) {
        counter += 1
        count.text = "\(counter)"
        multiplos10()
    }
    
    @IBAction func minus(_ sender: Any) {
        counter -= 1
        count.text = "\(counter)"
        multiplos10()
    }
    
    func multiplos10(){
        if counter%10 == 0 {
            textDica.text = "É múltiplo de 10!"
        } else {
            textDica.text = "Contando..."
        }
    }
}
