//
//  CadastarLoteViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 07/05/21.
//

import UIKit
import CoreData

class CadastarLoteViewController: UIViewController {

    @IBOutlet weak var textFieldNumeroLote: UITextField!
    @IBOutlet weak var textFieldPrecoLote: UITextField!
    @IBOutlet weak var textFieldAreaLote: UITextField!
    @IBOutlet weak var TextViewDescricaoLote: UITextView!
    
    @IBOutlet weak var labelValidaCamposLote: UILabel!
    
    var contextLotes: NSManagedObjectContext!
    var lote: NSManagedObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        contextLotes = appDelegate.persistentContainer.viewContext
        
        setaDadosNovamenteNoCadastroLote()
    }
    
    
    @IBAction func buttonCadastrarLote(_ sender: Any) {
        if textFieldNumeroLote.text == ""{
            labelValidaCamposLote.text = "Favor preencher o campo Lote!!"
        }
        else if textFieldPrecoLote.text == ""{
            labelValidaCamposLote.text = "Favor preencher o campo Preço!!"
        }
        else if textFieldAreaLote.text == ""{
            labelValidaCamposLote.text = "Favor preencher o campo Área!!"
        }
        else if TextViewDescricaoLote.text == ""{
            labelValidaCamposLote.text = "Favor preencher o campo descrição!!"
        }
        else{
            self.salvarCliente()
            //Retorna para a tela de clientes ao clicar no botão
            self.navigationController?.popViewController(animated: true)

        }
//        if lote != nil{
//            self.atualizarCliente()
//        }else{
//            self.salvarCliente()
//        }
    }
    
    
    //Salva dados inseridos nos TextFields
    func salvarCliente(){
        //Criando objeto para clientes
        let novoLote = NSEntityDescription.insertNewObject(forEntityName: "Lotes", into: contextLotes)
        
        //Configurando objeto cliente
        novoLote.setValue(self.textFieldNumeroLote.text, forKey: "numeroLote")
        novoLote.setValue(self.textFieldPrecoLote.text, forKey: "preco")
        novoLote.setValue(self.textFieldAreaLote.text, forKey: "area")
        novoLote.setValue(self.TextViewDescricaoLote.text, forKey: "descricao")

        do {
            try contextLotes.save()
            print("Sucesso ao salvar o Lote")
            print(novoLote)
        } catch let erro {
            print("Erro ao salvar cliente \(erro.localizedDescription)")
        }
    }
    // Salva os dados após o usuario salvar a edição
    func atualizarCliente() {
        lote.setValue(self.textFieldNumeroLote.text, forKey: "numeroLote")
        lote.setValue(self.textFieldPrecoLote.text, forKey: "preco")
        lote.setValue(self.textFieldAreaLote.text, forKey: "area")
        lote.setValue(self.TextViewDescricaoLote.text, forKey: "descricao")
        
        do {
            try contextLotes.save()
            print("Sucesso ao atualizar o cliente")
        } catch let erro {
            print("Erro ao atualizar cliente \(erro.localizedDescription)")
        }
    }
    
    //Seta os dados novamente na tela de cadastro
    func setaDadosNovamenteNoCadastroLote(){
        if lote != nil{
            guard let NumeroLoteRecuperado = lote.value(forKey: "numeroLote") else{return}
            guard let precoLoteRecuperado = lote.value(forKey: "preco") else{return}
            guard let areaLoteRecuperado = lote.value(forKey: "area") else{return}
            guard let descricaoLoteRecuperado = lote.value(forKey: "descricao") else{return}

            self.textFieldNumeroLote.text = String(describing: NumeroLoteRecuperado)
            self.textFieldPrecoLote.text = String(describing: precoLoteRecuperado)
            self.textFieldAreaLote.text = String(describing: areaLoteRecuperado)
            self.TextViewDescricaoLote.text = String(describing: descricaoLoteRecuperado)
        }else{
            self.textFieldNumeroLote.text = ""
            self.textFieldPrecoLote.text = ""
            self.textFieldAreaLote.text = ""
            self.TextViewDescricaoLote.text = ""
        }
    }
    
}
