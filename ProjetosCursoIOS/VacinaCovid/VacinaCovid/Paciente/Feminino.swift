//
//  Feminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Feminino: Paciente{

    var gravida: Bool = false
    init(nome: String, idade: Int, contaminado: Bool, gravida: Bool) {
        super.init(nome: nome, idade: idade, contaminado: contaminado, sexo: 2, dataDaVacina: CalculoVacinaFeminino())
    }
}
