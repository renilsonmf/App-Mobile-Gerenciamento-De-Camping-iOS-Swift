//
//  Gerente.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class Gerente: Colaborador {
    
    override init(nome: String, cargo: String, salarioBruto: Double, salarioLiquido: Double) {
        
        let calculoGerente: CalculaSalarioGerentes = CalculaSalarioGerentes()
        let salarioLiquidoCalculado = calculoGerente.calcula(salBruto: salarioBruto)
        
        super.init(nome: nome, cargo: cargo, salarioBruto: salarioBruto, salarioLiquido: salarioLiquidoCalculado)
        
    }

    
}
