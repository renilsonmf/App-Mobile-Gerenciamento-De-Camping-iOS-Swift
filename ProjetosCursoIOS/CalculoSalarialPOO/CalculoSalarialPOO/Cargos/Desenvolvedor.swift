//
//  Desenvolvedor.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class Desenvolvedor: Colaborador {
        
    override init(nome: String, cargo: String, salarioBruto: Double, salarioLiquido: Double) {
      
        let calculoDev: CalculaSalarioDesenvolvedor = CalculaSalarioDesenvolvedor()
        let salarioLiquidoCalculado = calculoDev.calcula(salBruto: salarioBruto)
        
        super.init(nome: nome, cargo: cargo, salarioBruto: salarioBruto, salarioLiquido: salarioLiquidoCalculado)
        
    }
        
        
    
    
       
    
}


