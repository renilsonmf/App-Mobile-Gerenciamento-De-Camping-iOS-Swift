//
//  CalculaSalarioQA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 13/05/21.
//

import UIKit

class CalculaSalarioQA {

    func calcula(salBruto: Double) -> Double{
        var salLiquido: Double = 0
        var desconto: Double = 0
        if salBruto > 2500{
            desconto = salBruto * 0.25
             salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.15
             salLiquido = salBruto - desconto
            return salLiquido
        }
    
    }
}
