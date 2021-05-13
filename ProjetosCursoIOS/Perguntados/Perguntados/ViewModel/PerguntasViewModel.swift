//
//  PerguntadosViewModel.swift
//  Perguntados
//
//  Created by Renilson Moreira Ferreira on 04/05/21.
//

import Foundation

struct PerguntasViewModel {

    let category: Category
    let type: TypeEnum
    let difficulty: Difficulty
    let question, correctAnswer: String
    let incorrectAnswers: [String]
   
}
