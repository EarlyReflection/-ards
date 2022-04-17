//
//  LessonsViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 17.04.2022.
//

import UIKit

class LessonsViewController: UIViewController {

    var user: String?
    let hell = "666"
    
    @IBOutlet var userInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = self.user else { return }
        userInfo.text = "Hello, \(user)!"
        
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
