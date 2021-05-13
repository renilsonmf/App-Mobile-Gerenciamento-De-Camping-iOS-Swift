//
//  ViewController.swift
//  PrimeiroApp
//
//  Created by Renilson Moreira Ferreira on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldIdade: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    @IBAction func buttonDescobrirIdade(_ sender: Any) {
        
        let idade = Int(textFieldIdade.text!)! * 7
        labelResultado.text = "A idade do cachorro é:" + String(idade)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

