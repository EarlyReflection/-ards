//
//  DictionaryTableViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 21.05.2022.
//

import UIKit

class DictionaryTableViewController: UITableViewController {
    
    var words: [Word]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "word", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let word = words[indexPath.row]
        
        content.text = word.term
        content.secondaryText = word.definition
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let word = words[indexPath.row]
        detailVC.word = word
    }
    

}
