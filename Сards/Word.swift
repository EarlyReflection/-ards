//
//  Word.swift
//  Сards
//
//  Created by Vladimir Dvornikov on 21.05.2022.
//

import Foundation

struct Word {
    let term: String
    let translation: String
    let exampleEn: String
    let exampleRu: String
    
    //let sound: String
    //var progress = Int
    //var complete = Bool
    
    static func getWords() -> [Word] {
        var words: [Word] = []
        let dictionary = Dictionary()
        
        for index in 0..<dictionary.arrayOfWords.count {
            let word = Word(
                term: dictionary.arrayOfWords[index][0],
                translation: dictionary.arrayOfWords[index][1],
                exampleEn: dictionary.arrayOfWords[index][2],
                exampleRu: dictionary.arrayOfWords[index][3]
                )
            words.append(word)
        }
        return words
    }
}
