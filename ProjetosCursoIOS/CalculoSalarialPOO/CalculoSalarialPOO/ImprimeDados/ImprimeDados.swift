//
//  ImprimeDados.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class ImprimeDados {
    
    func imprimeDadosColaborador(colaborador: Colaborador){
        //let nomeCargo = colaborador is Desenvolvedor ? "dev" : "não"
        print("Nome: \(colaborador.nome) | Cargo: \(colaborador.cargo) | Salario Bruto: \(colaborador.salarioBruto) | Salario Liquido: \(colaborador.salarioLiquido)")
        
        print("----------------------------------------------------------------------------------")
    }
    
    
}
