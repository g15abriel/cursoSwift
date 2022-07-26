//
//  ViewController.swift
//  IMC
//
//  Created by ICMMAC06-7A13 on 15/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbAltura: UITextField!
    @IBOutlet weak var lbPeso: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var uiImageResult: UIImageView!
    @IBOutlet weak var lbResultStatus: UILabel!
    @IBOutlet weak var viewResult: UIView!
    var altura = 0.0
    var peso = 0.0
    var imc = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btCalcularIMC(_ sender: Any) {
        altura = Double(lbAltura.text!) ?? 0.0
        peso = Double(lbPeso.text!) ?? 0.0
        imc = floor((peso/(altura*altura))*100)/100
        viewResult.isHidden = false
        view.endEditing(true)
        lbAltura.text = ""
        lbPeso.text = ""
        if imc < 18.5 {
            lbResult.text = "\(imc)"
            uiImageResult.image = UIImage(named: "magro")
            lbResultStatus.text = "Magro"
        } else if imc < 25.0 {
            lbResult.text = "\(imc)"
            uiImageResult.image = UIImage(named: "normal")
            lbResultStatus.text = "Normal"
        } else if imc < 30.0 {
            lbResult.text = "\(imc)"
            uiImageResult.image = UIImage(named: "sobrepeso")
            lbResultStatus.text = "Sobre Peso"
        } else {
            lbResult.text = "\(imc)"
            uiImageResult.image = UIImage(named: "gordo")
            lbResultStatus.text = "Gordo"
        }
    }
    
}

