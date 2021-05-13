//
//  ViewController.swift
//  GeradorDeNumeros
//
//  Created by Renilson Moreira Ferreira on 07/04/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func buttonGerar(_ sender: Any) {
        
        var numero = arc4random_uniform(111)
        labelResult.text = String(numero)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

