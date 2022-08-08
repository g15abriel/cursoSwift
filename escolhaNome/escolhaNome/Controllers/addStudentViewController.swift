//
//  addStudentViewController.swift
//  escolhaNome
//
//  Created by ICMMAC07-13C3 on 03/08/22.
//

import UIKit

class addStudentViewController: UIViewController {
    
    var managerAlunos = ManagerAlunos()
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfIdade: UITextField!
    @IBOutlet weak var tfCurso: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btAddStudent(_ sender: Any) {
        managerAlunos.addAluno(nome: tfNome.text!, idade: tfIdade.text!, curso: tfCurso.text!)
        view.endEditing(true)
        tfNome.text = ""
        tfIdade.text = ""
        tfCurso.text = ""
    }
    
}
