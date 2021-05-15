//
//  ImprimeDados.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class MaquinaDeSalario {
   
    func imprimir(){
        let listaDeFuncionarios = [
            Desenvolvedor(nome: "Renilson", salarioBruto: 25000.00),
            DBA(nome: "Camila ", salarioBruto: 5000.00),
            QA(nome: "Maurcio", salarioBruto: 3000.00),
            Gerente(nome: "Vitorio", salarioBruto: 7000.00),
            Desenvolvedor(nome: "Juninho", salarioBruto: 1000)]
            
        for i in 0...listaDeFuncionarios.count-1{
            print("Nome: \(listaDeFuncionarios[i].nome) | Cargo: \(listaDeFuncionarios[i].cargo) | Salario Bruto: \(listaDeFuncionarios[i].salarioBruto) | Salario Liquido: \(listaDeFuncionarios[i].calcularSalarioLiquido())")
        }
    }
    
}
