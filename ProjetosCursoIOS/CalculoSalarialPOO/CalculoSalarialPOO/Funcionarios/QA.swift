//
//  QA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class QA: Funcionario {
    
     init(nome: String, salarioBruto: Double) {
        super.init(nome: nome, cargo: "QA", salarioBruto: salarioBruto, calculadoraSalario: CalculaSalarioQA())
    }
}
