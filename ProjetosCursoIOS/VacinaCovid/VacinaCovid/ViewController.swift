//
//  ViewController.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let pacientes: ImpressoraDeDados = ImpressoraDeDados()
        pacientes.imprimir()
    }


}

