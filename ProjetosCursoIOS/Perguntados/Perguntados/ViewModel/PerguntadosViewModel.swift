//
//  PerguntadosViewModel.swift
//  Perguntados
//
//  Created by Renilson Moreira Ferreira on 04/05/21.
//

import Foundation

struct PerguntasViewModel {
    
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
}
