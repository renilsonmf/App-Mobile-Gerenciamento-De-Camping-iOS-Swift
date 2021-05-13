import UIKit

//
//  Cargo.swift
//  FolhaDePagamento
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class FolhaDePagamento {
    
    var salarioLiquido: Int = 0
    var salarioBruto: Int = 0
    var cargo: String = "Dev"

    
    func calculaSalario(SalBrut: Int, cargo: String, salLiquido: Int) -> Int{
        var desconto = 0
        
        //Desconto Desenvolvedores
        if cargo == "Dev" && salarioBruto > 3000{
            desconto = (salarioBruto * Int(0.2))
            salarioLiquido = salarioBruto - desconto
        }else{
            desconto = (salarioBruto * Int(0.1))
            salarioLiquido = salarioBruto - desconto
        }
        
        
        //Desconto DBA e Testadores
        if cargo == "DBA" || cargo == "testadores" && salarioBruto > 2500{
            desconto = (salarioBruto * Int(0.25))
            salarioLiquido = salarioBruto - desconto
        }else{
            desconto = (salarioBruto * Int(0.15))
            salarioLiquido = salarioBruto - desconto
        }
        
        
        //Desconto Gerentes
        if cargo == "Gerentes" && salarioBruto > 7000{
            desconto = (salarioBruto * Int(0.23))
            salarioLiquido = salarioBruto - desconto
        }else{
            desconto = (salarioBruto * Int(0.18))
            salarioLiquido = salarioBruto - desconto
        }
        return salarioLiquido
    }
    
}




