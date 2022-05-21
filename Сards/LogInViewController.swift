//
//  ViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 10.04.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {return}
        guard let lessonsVC = navigationVC.topViewController as? LessonsViewController else { return }
        lessonsVC.user = userName.text
    }
    
    
    @IBAction func unwindToLogIn(segue: UIStoryboardSegue) {
        userName.text = ""
        passwordTF.text = ""
        
    }
    
}
