//
//  DBA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class DBA: Funcionario {
    
     init(nome: String, salarioBruto: Double) {
        super.init(nome: nome, cargo: "DBA", salarioBruto: salarioBruto, calculadoraSalario: CalculaSalarioDBA())
    }
    
}
