//
//  CalculoVacinaFeminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class CalculoVacinaFeminino: DataDaVacina {
    
    func calculaDataDaVacina(idade: Int) -> String {
        
        var tempoParaVacina: String = ""
        if (idade > 70){
            tempoParaVacina = "Imediato"
        }
        else if (idade > 60 && idade <= 70){
            tempoParaVacina = "A partir de 30 dias"
        }
        else if (idade > 50 && idade <= 60){
            tempoParaVacina = "A partir de 60 dias"
        }
        else if (idade > 30 && idade <= 50){
            tempoParaVacina = "A partir de 90 dias"
        }
        else if (idade > 20 && idade <= 30){
            tempoParaVacina = "A partir de 120 dias"
        }
        else if (idade >= 0 && idade <= 20){
            tempoParaVacina = "Apartir de 150 dias"
        }
        return tempoParaVacina
    }

}
