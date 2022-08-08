//
//  chosseStudentViewController.swift
//  escolhaNome
//
//  Created by ICMMAC07-13C3 on 08/08/22.
//

import UIKit

class chosseStudentViewController: UIViewController {
    
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbIdade: UILabel!
    @IBOutlet weak var lbCurso: UILabel!
    var managerAluno = ManagerAlunos()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if managerAluno.tamanhoList() > 0 {
            let aluno = managerAluno.retornaEscolhaAluno()
            
            lbNome.text = aluno.nome
            lbIdade.text = aluno.idade
            lbCurso.text = aluno.curso
        }
    }

}
