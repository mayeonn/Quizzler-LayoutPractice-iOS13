//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 김하연 on 2023/09/21.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answer: Array<String>
    let correctAnswer: String
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        self.text = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
