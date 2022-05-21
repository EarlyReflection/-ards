//
//  Word.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 21.05.2022.
//

import Foundation

struct Word {
    let term: String
    let definition: String
    let exampleEn: String
    let exampleRu: String
    
    //let sound: String
    //var progress = Int
    //var complete = Bool
    
    static func getWords() -> [Word] {
        var words: [Word] = []
        let dictionary = Dictionary()
        
        for index in 0..<dictionary.terms.count {
            let word = Word(
                term: dictionary.terms[index][0],
                definition: dictionary.terms[index][1],
                exampleEn: dictionary.terms[index][2],
                exampleRu: dictionary.terms[index][3]
                )
            words.append(word)
            
        }
        return words
    }
}
