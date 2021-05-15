//
//  Paciente.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Paciente{
    var nome: String
    var idade: Int
    var contaminado: Bool
    var sexo: Int
    var dataDaVacina: DataDaVacina
    
    init(nome: String, idade: Int, contaminado: Bool, sexo: Int, dataDaVacina: DataDaVacina) {
        self.nome = nome
        self.idade = idade
        self.contaminado = contaminado
        self.sexo = sexo
        self.dataDaVacina = dataDaVacina
    }
    
    func calculaDataVacina() -> String{
        return dataDaVacina.calculaDataDaVacina(idade: idade)
    }
    
}

