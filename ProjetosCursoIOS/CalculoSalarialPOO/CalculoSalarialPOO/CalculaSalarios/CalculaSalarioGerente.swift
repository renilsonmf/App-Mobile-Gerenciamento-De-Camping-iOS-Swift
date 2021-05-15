//
//  CalculaSalarioDBAeQA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class CalculaSalarioGerente: CalculadoraSalario {

    func calcularSalarioLiquido(salarioBruto: Double) -> Double {
        var desconto: Double
        if(salarioBruto > 7000){
            desconto = 0.23
        }else{
            desconto = 0.18
        }
        return salarioBruto - (salarioBruto * desconto)
    }
    
}

