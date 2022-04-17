//
//  ViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let lessonsVC = segue.destination as? LessonsViewController else { return }
        lessonsVC.user = userName.text
    }
    
    @IBAction func enterPressed() {
        performSegue(withIdentifier: "firstSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToLoginScreen(segue: UIStoryboardSegue) {
        userName.text = ""
        passwordTF.text = ""
    
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

}
