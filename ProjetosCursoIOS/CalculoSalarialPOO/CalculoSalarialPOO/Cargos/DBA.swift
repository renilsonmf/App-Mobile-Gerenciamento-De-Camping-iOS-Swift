//
//  DBA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 13/05/21.
//

import UIKit

class DBA: Colaborador {

    override init(nome: String, cargo: String, salarioBruto: Double, salarioLiquido: Double) {
        
        let calculoDBA: CalculaSalarioDBA = CalculaSalarioDBA()
        let salarioLiquidoCalculado = calculoDBA.calcula(salBruto: salarioBruto)
        
        super.init(nome: nome, cargo: cargo, salarioBruto: salarioBruto, salarioLiquido: salarioLiquidoCalculado)
        
    }
    
}
