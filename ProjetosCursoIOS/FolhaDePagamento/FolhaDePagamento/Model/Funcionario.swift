//
//  Funcionario.swift
//  FolhaDePagamento
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

public class Funcionario: NSObject{
    //var nome: [String] = []
    var nome: String
    var cargo: String
    var salarioBruto: Int
    
    
    init(nome: String, cargo: String, salarioBruto: Int) {
        self.nome = nome
        self.cargo = cargo
        self.salarioBruto = salarioBruto
    }
  
    
}



