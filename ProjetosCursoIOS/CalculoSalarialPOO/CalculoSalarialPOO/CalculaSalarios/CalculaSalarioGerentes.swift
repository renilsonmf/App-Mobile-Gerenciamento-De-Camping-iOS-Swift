//
//  CalculaSalarioDBAeQA.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class CalculaSalarioGerentes {

    func calcula(salBruto: Double) -> Double{
        var salLiquido: Double = 0
        var desconto: Double = 0
        if salBruto > 7000{
            desconto = salBruto * 0.23
             salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.18
             salLiquido = salBruto - desconto
            return salLiquido
        }

    }
}
