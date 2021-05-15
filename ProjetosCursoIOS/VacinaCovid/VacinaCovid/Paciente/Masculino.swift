//
//  Masculino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Masculino: Paciente {

     init(nome: String, idade: Int, contaminado: Bool) {
        super.init(nome: nome, idade: idade, contaminado: contaminado, sexo: 1, dataDaVacina: CalculoVacinaMasculino())
    }
    }
