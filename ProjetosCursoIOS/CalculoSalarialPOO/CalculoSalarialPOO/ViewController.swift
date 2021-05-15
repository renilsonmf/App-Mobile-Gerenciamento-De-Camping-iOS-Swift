//
//  ViewController.swift
//  CalculoSalarialPOO
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textViewLista: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listaDados: MaquinaDeSalario = MaquinaDeSalario()
        listaDados.imprimir()
    }

}

