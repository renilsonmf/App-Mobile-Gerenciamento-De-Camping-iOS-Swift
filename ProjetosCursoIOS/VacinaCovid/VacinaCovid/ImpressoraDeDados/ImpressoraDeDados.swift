//
//  ImpressoraDeDados.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import Foundation

class ImpressoraDeDados {
    
     func imprimir(){
         let listaDePacientes = [
            Feminino(nome: "Larissa", idade: 21, contaminado: false, gravida: true),
            Masculino(nome: "Renilson", idade: 70, contaminado: false),
            Feminino(nome: "Maria", idade: 78, contaminado: true, gravida: false),
            Masculino(nome: "Marcos", idade: 55, contaminado: false)
             ]
             
         for i in 0...listaDePacientes.count-1{
            print("Nome: \(listaDePacientes[i].nome) | Idade: \(listaDePacientes[i].idade) | Contaminado: \(listaDePacientes[i].contaminado) | Tempo Vacina: \(listaDePacientes[i].calculaDataVacina())")
         }
     }
}
