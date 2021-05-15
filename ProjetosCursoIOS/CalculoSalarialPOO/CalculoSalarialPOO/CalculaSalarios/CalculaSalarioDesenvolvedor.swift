//
//  CalculaSalarioDesenvolvedor.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class CalculaSalarioDesenvolvedor: CalculadoraSalario {
    
    func calcularSalarioLiquido(salarioBruto: Double) -> Double {
        var desconto: Double
        if(salarioBruto > 3000){
            desconto = 0.2
        }else{
            desconto = 0.1
        }
        return salarioBruto - (salarioBruto * desconto)
    }
}
