//
//  mainViewController.swift
//  escolhaNome
//
//  Created by ICMMAC07-13C3 on 03/08/22.
//

import UIKit

class mainViewController: UIViewController {
    
    var managerAlunos = ManagerAlunos()
    let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btShowViewAddName(_ sender: Any) {
        let addStudentView: addStudentViewController = storyboard1.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        addStudentView.managerAlunos = self.managerAlunos
        self.present(addStudentView, animated: true, completion: nil)
        performSegue(withIdentifier: "addNome", sender: nil)
    }
    
    @IBAction func btShowViewListNames(_ sender: Any) {
        let listStudentsView: listStudentsViewController = storyboard1.instantiateViewController(withIdentifier: "listStudents") as! listStudentsViewController
        listStudentsView.managerAlunos = self.managerAlunos
        self.present(listStudentsView, animated: true, completion: nil)
        performSegue(withIdentifier: "listStudents", sender: nil)
    }
    
    @IBAction func btShowViewChooseStudent(_ sender: Any) {
        let chooseStudentView: chosseStudentViewController = storyboard1.instantiateViewController(withIdentifier: "chooseStudent") as! chosseStudentViewController
        chooseStudentView.managerAluno = self.managerAlunos
        self.present(chooseStudentView, animated: true, completion: nil)
        performSegue(withIdentifier: "chooseStudent", sender: nil)
    }
    
    @IBAction func returnMainView(segue: UIStoryboardSegue){}
}
