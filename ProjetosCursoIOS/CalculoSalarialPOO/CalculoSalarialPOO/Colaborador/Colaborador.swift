//
//  Colaborador.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class Colaborador {
    var nome: String
    var cargo: String
    var salarioBruto: Double
    var salarioLiquido: Double

    init(nome:String, cargo: String, salarioBruto: Double, salarioLiquido: Double) {
        self.nome = nome
        self.cargo = cargo
        self.salarioBruto = salarioBruto
        self.salarioLiquido = salarioLiquido
    }
    
}
