//
//  DetailTableViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 22.06.2022.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var word: Word!

    @IBOutlet var termLabel: UILabel!
    @IBOutlet var translationLabel: UILabel!
    @IBOutlet var enExampleLabel: UILabel!
    @IBOutlet var ruExampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
