//
//  DetailTableViewController.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 22.06.2022.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var word: Word!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detail", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = word.term
            content.textProperties.font = UIFont.systemFont(ofSize: 33)
        case 1:
            content.text = word.translation
            content.textProperties.font = UIFont.systemFont(ofSize: 27)
        case 2:
            content.text = word.exampleEn
            content.textProperties.color = UIColor.black
        default:
            content.text = word.exampleRu
        }
        
        cell.contentConfiguration = content
        return cell
        
    }
    
}
