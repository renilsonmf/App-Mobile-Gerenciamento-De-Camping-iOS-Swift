//
//  InicioViewController.swift
//  Perguntados
//
//  Created by Renilson Moreira Ferreira on 06/05/21.
//

import UIKit

class InicioViewController: UIViewController {
        
    let contexto = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Falseeee")
    }
    @IBAction func buttonIniciaAPP(_ sender: Any) {
        self.navigationController?.pushViewController(c, animated: true)
    }

    
}
