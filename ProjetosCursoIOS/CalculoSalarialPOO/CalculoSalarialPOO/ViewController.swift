//
//  ViewController.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaDados()
    }
    func listaDados() {

        //Desenvolvedores
        let colaboradorDev: Desenvolvedor = Desenvolvedor(nome: "Renilson", cargo: "Dev", salarioBruto: 2000.0, salarioLiquido: 0.0)

        //QA
        let colaboradorQA: QA = QA(nome: "José", cargo: "QA", salarioBruto: 3000, salarioLiquido: 0.0)
        
        //DBA
        let colaboradorDBA: DBA = DBA(nome: "André", cargo: "DBA", salarioBruto: 5000, salarioLiquido: 0.0)
        
        //Gerentes
        let colaboradorGerente: Gerente = Gerente(nome: "Marcos", cargo: "Gerente", salarioBruto: 7500.0, salarioLiquido: 0.0)
        
        
        ImprimeDados().imprimeDadosColaborador(colaborador: colaboradorDev)
        ImprimeDados().imprimeDadosColaborador(colaborador: colaboradorDBA)
        ImprimeDados().imprimeDadosColaborador(colaborador: colaboradorQA)
        ImprimeDados().imprimeDadosColaborador(colaborador: colaboradorGerente)

    }

}

