//
//  listStudentsViewController.swift
//  escolhaNome
//
//  Created by ICMMAC07-13C3 on 03/08/22.
//

import UIKit

class listStudentsViewController: UIViewController {
    
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbIdade: UILabel!
    @IBOutlet weak var lbCurso: UILabel!
    @IBOutlet weak var btIndexAnterior: UIButton!
    @IBOutlet weak var btIndexPosterior: UIButton!
    
    var managerAlunos = ManagerAlunos()
    var index = 0
    var aluno: Aluno!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if managerAlunos.tamanhoList() > 0 {
            reloadAluno()
        }
        btIndexAnterior.isHidden = true
        if managerAlunos.tamanhoList() < 2 {
            btIndexPosterior.isHidden = true
        }
        
    }
    
    @IBAction func btEscolhaAluno(_ sender: Any) {
        managerAlunos.escolhaAluno(ind: index)
    }
    
    @IBAction func btExcluirAluno(_ sender: Any) {
        managerAlunos.excluirAluno(inde: index)
        print(index)
        print(managerAlunos.tamanhoList())
        
        if index < managerAlunos.tamanhoList(){
            reloadAluno()
        }
        
    }
    
    @IBAction func btShowAnteriorAluno(_ sender: Any) {
        index -= 1
        reloadAluno()
        
        btIndexPosterior.isHidden = false
        if index < 1 {
            btIndexAnterior.isHidden = true
        }
    }
    
    @IBAction func btShowPosteriorAluno(_ sender: Any) {
        index += 1
        reloadAluno()
        
        btIndexAnterior.isHidden = false
        if (index + 1) == managerAlunos.tamanhoList() {
            btIndexPosterior.isHidden = true
        }
    }
    
    func reloadAluno(){
        aluno = managerAlunos.listarAluno(index: index)
        lbNome.text = "\(aluno.nome)"
        lbIdade.text = "\(aluno.idade)"
        lbCurso.text = "\(aluno.curso)"
    }
}
