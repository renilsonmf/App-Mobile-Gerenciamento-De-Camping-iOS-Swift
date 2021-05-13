//
//  ListarClientesTableViewController.swift
//  Persistencia
//
//  Created by Renilson Moreira Ferreira on 30/04/21.
//

import UIKit
import CoreData

class ListarClientesTableViewController: UITableViewController {

   
    
    var context: NSManagedObjectContext!
    var clientes: [NSManagedObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.recuperarClientes()
    }
    
    func recuperarClientes()  {
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Clientes")
       
        do {
            let clientesRecuperados = try context.fetch(requisicao)
            self.clientes = clientesRecuperados as! [NSManagedObject]
            self.tableView.reloadData()
        } catch let erro {
            print("Erro ao recuperar anotações: \(erro.localizedDescription)")
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.clientes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        let cliente = self.clientes[indexPath.row]
        let campoNome = cliente.value(forKey: "nome")
        let campoData = cliente.value(forKey: "data")
        
        //Formatando data
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dataFormatada = dateFormatter.string(from: campoData as! Date )
        cell.textLabel?.text = campoNome as? String
        cell.detailTextLabel?.text = dataFormatada
        return cell
    }

 
}
