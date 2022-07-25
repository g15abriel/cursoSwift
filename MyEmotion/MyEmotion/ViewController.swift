//
//  ViewController.swift
//  MyEmotion
//
//  Created by ICMMAC09-BF7F on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiEmotion: UIImageView!
    var check = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btShowEmotion(_ sender: UIButton) {
        if check {
            uiEmotion.image = UIImage(named: "sad")
            sender.setTitle("Sad", for: .normal)
        } else{
            uiEmotion.image = UIImage(named: "happy")
            sender.setTitle("Happy", for: .normal)
        }
        check = !check
    }
    
}

