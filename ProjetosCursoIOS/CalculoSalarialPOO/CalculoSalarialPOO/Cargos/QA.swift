//
//  QA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 13/05/21.
//

import UIKit

class QA: Colaborador {

    override init(nome: String, cargo: String, salarioBruto: Double, salarioLiquido: Double) {
        
        let calculoQA: CalculaSalarioQA = CalculaSalarioQA()
        let salarioLiquidoCalculado = calculoQA.calcula(salBruto: salarioBruto)
        
        super.init(nome: nome, cargo: cargo, salarioBruto: salarioBruto, salarioLiquido: salarioLiquidoCalculado)
        
    }
    
}
