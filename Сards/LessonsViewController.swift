//
//  LessonsViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 17.04.2022.
//

import UIKit

class LessonsViewController: UIViewController {
    
    let words = Word.getWords()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dictionaryVC = segue.destination as? DictionaryTableViewController else { return }
        dictionaryVC.words = words
        
    }
}
