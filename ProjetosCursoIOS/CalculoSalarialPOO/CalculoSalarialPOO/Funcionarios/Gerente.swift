//
//  Gerente.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Gerente: Funcionario {
    
     init(nome: String, salarioBruto: Double) {
        super.init(nome: nome, cargo: "Gerente", salarioBruto: salarioBruto, calculadoraSalario: CalculaSalarioGerente())
    }
    
}
