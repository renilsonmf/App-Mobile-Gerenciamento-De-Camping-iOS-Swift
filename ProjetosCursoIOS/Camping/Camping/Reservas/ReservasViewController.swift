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
    @IBOutlet weak var labelTelefoneResercas: UILabel!
    @IBOutlet weak var labelCpfReservas: UILabel!
    @IBOutlet weak var labelLoteAlugado: UILabel!
    
    var contextReservas: NSManagedObjectContext!
    
    var loteReserva: NSManagedObject!
    var clienteReserva: NSManagedObject!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaReserva()
    }
    
    func listaReserva(){
        guard let nome = clienteReserva.value(forKey: "nome") else {return}
        guard let telefone = clienteReserva.value(forKey: "telefone") else {return}
        guard let cpf = clienteReserva.value(forKey: "cpf") else {return}
        //guard let loteAlugado = loteReserva.value(forKey: "numeroLote") else {return}

        labelNomeReservas.text = " Nome: \(nome)"
        labelTelefoneResercas.text = "Telefone: \(telefone)"
        labelCpfReservas.text = "Cpf: \(cpf)"
        //labelLoteAlugado.text = "Lote: \(loteAlugado)"
    }
    

}
