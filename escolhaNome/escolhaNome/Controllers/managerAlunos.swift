//
//  managerAlunos.swift
//  escolhaNome
//
//  Created by ICMMAC07-13C3 on 03/08/22.
//

import Foundation

class ManagerAlunos {
    
    private var alunos: [Aluno] = []
    private var escolha: Int = 0
    
    func addAluno(nome:String, idade: String, curso: String){
        alunos.append(Aluno(nome: nome.self, idade: idade.self, curso: curso.self))
    }
    
    func listarAluno(index: Int) -> Aluno {
        return alunos[index]
    }
    
    func excluirAluno(inde: Int){
        alunos.remove(at: inde)
    }
    
    func escolhaAluno(ind: Int){
        escolha = ind
    }
    
    func retornaEscolhaAluno() -> Aluno {
        return alunos[escolha]
    }
    
    func tamanhoList() -> Int {
        return alunos.count
    }
    
}
