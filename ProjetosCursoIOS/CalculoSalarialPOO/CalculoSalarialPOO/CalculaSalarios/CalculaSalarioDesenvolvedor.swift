//
//  CalculaSalarioDesenvolvedor.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class CalculaSalarioDesenvolvedor {
  
    func calcula(salBruto: Double) -> Double{
        
        var salLiquido: Double = 0
        var desconto: Double = 0
        if salBruto > 3000{
            desconto = salBruto * 0.20
             salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.10
            salLiquido = salBruto - desconto
            return salLiquido
        }
    }
    
}
