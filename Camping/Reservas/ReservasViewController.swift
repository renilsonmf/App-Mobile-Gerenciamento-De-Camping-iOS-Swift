//
//  ReservasViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 10/05/21.
//

import UIKit
import CoreData

class ReservasViewController: UIViewController {

    @IBOutlet weak var labelNomeReservas: UILabel!
    
    var contextReservas: NSManagedObjectContext!
    
    var loteReserva: NSManagedObject!
    var clienteReserva: NSManagedObject!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let nome = clienteReserva.value(forKey: "nome") else {return}
       labelNomeReservas.text = " Nome: \(nome)"
       
        
        
//        if let teste = clienteReserva?.value(forKey: "nome") {
//            labelNomeReservas.text = teste as! String
//        }
    }
    

}
