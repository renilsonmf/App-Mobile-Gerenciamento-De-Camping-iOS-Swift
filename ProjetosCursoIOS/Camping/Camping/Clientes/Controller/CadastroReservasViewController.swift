//
//  CadastrarClientesViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 03/05/21.
//

import UIKit
import CoreData

class CadastroReservasViewController: UIViewController {

    @IBOutlet weak var TextFieldNome: UITextField!
    @IBOutlet weak var TextFieldTelefone: UITextField!
    @IBOutlet weak var TextFieldCpf: UITextField!
    @IBOutlet weak var TextFieldLote: UITextField!
    @IBOutlet weak var labelValidaCampoCliente: UILabel!
    
    var context: NSManagedObjectContext!
    var cliente: NSManagedObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(patternImage: UIImage(named: "fundo.jpg")!)
        self.TextFieldNome.becomeFirstResponder()//Mostra o teclado
        
        //CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
    }
    
    @IBAction func buttonCadastrarCliente(_ sender: Any) {
        
        
        if TextFieldNome.text == ""{
            labelValidaCampoCliente.text = "Favor preencher o campo Nome!!"
        }
        else if TextFieldTelefone.text == ""{
            labelValidaCampoCliente.text = "Favor preencher o campo Telefone!!"
        }
        else if TextFieldCpf.text == ""{
            labelValidaCampoCliente.text = "Favor preencher o campo Cpf!!"
        }
        else if TextFieldLote.text == ""{
            labelValidaCampoCliente.text = "Favor preencher o campo Lote!!"
        }
       
        else{
            self.salvarCliente()
            //Retorna para a tela de clientes ao clicar no botão
            self.navigationController?.popViewController(animated: true)

        }//        if cliente != nil{
//            self.atualizarCliente()
//        }else{
//            self.salvarCliente()
//        }
      
    }
    
    
//    Seta os dados novamente na tela de cadastro
//    func setaDadosNovamenteNoCadastro(){
//        if cliente != nil{
//            guard let nomeRecuperado = cliente.value(forKey: "nome") else{return}
//            guard let telefoneRecuperado = cliente.value(forKey: "telefone") else{return}
//            guard let cpfRecuperado = cliente.value(forKey: "cpf") else{return}
//            guard let loteRecuperado = cliente.value(forKey: "lote") else{return}
//
//            self.TextFieldNome.text = String(describing: nomeRecuperado)
//            self.TextFieldTelefone.text = String(describing: telefoneRecuperado)
//            self.TextFieldCpf.text = String(describing: cpfRecuperado)
//            self.TextFieldLote.text = String(describing: loteRecuperado)
//        }else{
//            self.TextFieldNome.text = ""
//            self.TextFieldTelefone.text = ""
//            self.TextFieldCpf.text = ""
//            self.TextFieldLote.text = ""
//        }
//    }
//
//
//     Salva os dados após o usuario salvar a edição
//    func atualizarCliente() {
//        cliente.setValue(self.TextFieldNome.text, forKey: "nome")
//        cliente.setValue(self.TextFieldTelefone.text, forKey: "telefone")
//        cliente.setValue(self.TextFieldCpf.text, forKey: "cpf")
//        cliente.setValue(self.TextFieldLote.text, forKey: "lote")
//
//        do {
//            try context.save()
//            print("Sucesso ao atualizar o cliente")
//        } catch let erro {
//            print("Erro ao atualizar cliente \(erro.localizedDescription)")
//        }
//    }

    func salvarCliente(){
        //Criando objeto para clientes
        let novoCliente = NSEntityDescription.insertNewObject(forEntityName: "Clientes", into: context)
        

        //Configurando objeto cliente
        novoCliente.setValue(self.TextFieldNome.text, forKey: "nome")
        novoCliente.setValue(self.TextFieldTelefone.text, forKey: "telefone")
        novoCliente.setValue(self.TextFieldCpf.text, forKey: "cpf")
        novoCliente.setValue(self.TextFieldLote.text, forKey: "lote")
        do {
            try context.save()
            print("Sucesso ao salvar o cliente")
            print(novoCliente)
        } catch let erro {
            print("Erro ao salvar cliente \(erro.localizedDescription)")
        }
    }
}
