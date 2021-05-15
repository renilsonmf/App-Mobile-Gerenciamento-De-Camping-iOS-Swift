//
//  Funcionario.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Funcionario {

    var nome: String
    var cargo: String
    var salarioBruto: Double
    var calculadoraSalario: CalculadoraSalario
    
    init(nome: String, cargo: String, salarioBruto: Double, calculadoraSalario: CalculadoraSalario) {
        self.nome = nome
        self.cargo = cargo
        self.salarioBruto = salarioBruto
        self.calculadoraSalario = calculadoraSalario
    }
    func calcularSalarioLiquido() -> Double{
        return calculadoraSalario.calcularSalarioLiquido(salarioBruto: salarioBruto)
    }
}
