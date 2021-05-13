//
//  CalculaSalarioDBAeQA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class CalculaSalarioGerentes: NSObject {
    
    func calculoGerente(salBruto: Double, salLiquido:Double) -> Double{
        var desconto: Double = 0
        if salLiquido > 7000{
            desconto = salBruto * 0.23
            let salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.18
            let salLiquido = salBruto - desconto
            return salLiquido
        }
     
    }
}
