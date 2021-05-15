//
//  Desenvolvedor.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 13/05/21.
//

import UIKit

class Desenvolvedor: Funcionario {
    
     init(nome: String, salarioBruto: Double) {
        super.init(nome: nome, cargo: "Dev", salarioBruto: salarioBruto, calculadoraSalario: CalculaSalarioDesenvolvedor())
    }
    
//     init(nome: String, salarioBruto: Double) {
//        super.init(nome: nome, cargo: 0, salarioBruto: salarioBruto, calculadoraSalario: CalculaSalarioDesenvolvedor())
//    }
    
}
