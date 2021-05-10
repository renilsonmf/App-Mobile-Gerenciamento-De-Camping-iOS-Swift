//
//  ViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 03/05/21.
//

import UIKit
import CoreData

class ClientesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var context: NSManagedObjectContext!
    var clientes: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(patternImage: UIImage(named: "fundo.jpg")!)
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        //myTableView.tableFooterView = UIView()//Remote as celulas vazias

    }
    override func viewDidAppear(_ animated: Bool) {
        self.recuperarClientes()
    }
    
    func recuperarClientes(){
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Clientes")
        do {
             let clientesRecuperados = try context.fetch(requisicao)
            self.clientes = clientesRecuperados as! [NSManagedObject]
            self.myTableView.reloadData()
        } catch let erro {
            print("Erro ao recuperar clintes: \(erro.localizedDescription)")
        }
    }
    //Quantidade de linhas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clientes.count
    }
    //Conteudo da row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellClientes", for: indexPath) as! ListaClientesTableViewCell
        let cliente = self.clientes[indexPath.row]
        let campoNome = cliente.value(forKey: "nome")
       // let campoTelefone = cliente.value(forKey: "telefone")
        //let campoCpf = cliente.value(forKey: "cpf")
        let campoLote = cliente.value(forKey: "lote")
        
        cell.LabelNomeTable.text = campoNome as? String
       // cell.LabelTelefoneTable.text = campoTelefone as? String
        //cell.LabelCpfTable.text = campoCpf as? String
        cell.LabelLoteTable.text = campoLote as? String
        return cell
        
    }
    //Atualizando dados cadastrados
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.myTableView.deselectRow(at: indexPath, animated: true)
        let indice = indexPath.row
        let cliente = self.clientes[indice]
        self.performSegue(withIdentifier: "verCliente", sender: cliente)
    }
    //Após clicar na celula, o usuario é levado novamente para tela de cadastro
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verCliente" {
            let viewDestino = segue.destination as! CadastrarClientesViewController
            viewDestino.cliente = sender as? NSManagedObject
        }
    }
    // Altura da celula
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    //Deleta o cliente cadastrado
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let indice = indexPath.row
            let cliente = self.clientes[indice]
            
            //Removendo do banco de dados
            self.context.delete(cliente)
            //Removendo do Array
            self.clientes.remove(at: indice)
            //Remove apenas o campo sem atualizar a tabela
            self.myTableView.deleteRows(at: [indexPath], with: .automatic)
        
            //confirma que o item vai ser removido
            do {
                try self.context.save()
            } catch let erro{
                print("Erro ao remover item \(erro)")
            }
        }
    }

}

