//
//  CalculaSalarioDBA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 13/05/21.
//

import UIKit

class CalculaSalarioDBA: CalculadoraSalario{
    
    func calcularSalarioLiquido(salarioBruto: Double) -> Double {
        var desconto: Double
        if(salarioBruto > 2500){
            desconto = 0.25
        }else{
            desconto = 0.15
        }
        return salarioBruto - (salarioBruto * desconto)
    }
}

