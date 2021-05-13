//
//  ViewController.swift
//  FolhaDePagamento
//
//  Created by Renilson Moreira Ferreira on 12/05/21.
//

import UIKit

class ViewController: UIViewController {

    var funcionarios: [String] = []
    
    //MARK: Outlets
    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldCargo: UITextField!
    @IBOutlet weak var textFieldSalBruto: UITextField!
    @IBOutlet weak var textViewFuncionarios: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Button Cadastrar Dados
    @IBAction func buttonSetup(_ sender: Any) {
        guard let nomeText = textFieldNome.text else {return}
        guard let cargoText = textFieldCargo.text else {return}
        guard let salBrutoText = textFieldSalBruto.text else {return}

        let lista = FolhaDePagamento(nome: nomeText , cargo: cargoText, salarioBruto: Int(salBrutoText)!)
        lista.calculaSalario(a: lista.salarioBruto)
            // Adiciona funcionario dentro do array
            funcionarios.append("Nome: \(nomeText) | Cargo: \(cargoText) | Salario Bruto: \(salBrutoText) | Salario Liquido: \(lista.salarioLiquido)")
       
    }
    //Button Listar dados
    @IBAction func buttonListarCalculos(_ sender: Any) {
//        guard var campoLista = textViewFuncionarios.text else {return }
//        for i in 0...funcionarios.count{
//            campoLista = funcionarios[i]
            print(funcionarios)

        }
  
    
    
    
}
    
   
   

