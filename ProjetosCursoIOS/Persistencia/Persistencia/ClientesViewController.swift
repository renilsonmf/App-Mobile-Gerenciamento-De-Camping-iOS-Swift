//
//  ClientesUIViewController.swift
//  Persistencia
//
//  Created by Renilson Moreira Ferreira on 30/04/21.
//

import UIKit
import CoreData

class ClientesViewController: UIViewController {

    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldTelefone: UITextField!
    @IBOutlet weak var textFieldCpf: UITextField!
    @IBOutlet weak var textFieldLote: UITextField!
    
    var context: NSManagedObjectContext!
    var cliente: NSManagedObject!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mostra o teclado
        self.textFieldNome.becomeFirstResponder()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    @IBAction func buttonCadastrarCliente(_ sender: Any) {
        self.salvarCliente()
        
        //Retorna para a tela inicial ao clicar no botão
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func salvarCliente() {
        //Cria objeto para clientes
        let novoCliente = NSEntityDescription.insertNewObject(forEntityName: "Clientes", into: context)
        
        //Configura clientes
        novoCliente.setValue(self.textFieldNome.text, forKey: "nome")
        novoCliente.setValue(self.textFieldTelefone.text, forKey: "telefone")
        novoCliente.setValue(self.textFieldCpf.text, forKey: "cpf")
        novoCliente.setValue(self.textFieldLote.text, forKey: "lote")
        novoCliente.setValue(Date(), forKey: "data")
        do {
            try context.save()
            print("Sucesso ao salvar anotação!")
            print(novoCliente)
        } catch let erro{
            print("Erro ao salvar anotação")
        }
    }
   

}
