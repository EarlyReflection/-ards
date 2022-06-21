//
//  DetailViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 22.05.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var word: Word!

    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var exampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wordLabel.text = word.term
        definitionLabel.text = word.definition
        exampleLabel.text = "\(word.exampleEn) \n\n\(word.exampleRu)"

    }
    

}
