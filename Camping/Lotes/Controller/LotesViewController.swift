//
//  LotesViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 07/05/21.
//

import UIKit
import CoreData

class LotesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    var contextLotes: NSManagedObjectContext!
    var lotes: [NSManagedObject] = []
    
    @IBOutlet weak var labelTotalLotes: UILabel!
    @IBOutlet weak var myCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.delegate = self
        myCollection.dataSource = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        contextLotes = appDelegate.persistentContainer.viewContext

    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.recuperarLotes()
        
    }
    
    //Pega os lotes cadastrados e joga para a collction
    func recuperarLotes(){
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Lotes")
        do {
             let lotesRecuperados = try contextLotes.fetch(requisicao)
            self.lotes = lotesRecuperados as! [NSManagedObject]
            self.myCollection.reloadData()
        } catch let erro {
            print("Erro ao recuperar clintes: \(erro.localizedDescription)")
        }
    }
    
    //MARK: CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lotes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaLote", for: indexPath) as! ListaLotesCollectionViewCell
        
        //Configurando celula
        //cell.layer.cornerRadius = 7
        //cell.layer.shadowRadius = 4
        //cell.layer.shadowOffset = .zero
        //cell.layer.shadowOpacity = 0.5
        //cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowPath = UIBezierPath(rect: cell.bounds).cgPath
        cell.layer.masksToBounds = false
        
        let lote = self.lotes[indexPath.row]
        
        if let campoNumeroLote = lote.value(forKey: "numeroLote"){
            cell.labelNumeroLote.text = "LOTE \(campoNumeroLote)"
        }
        if let campoPrecoLote = lote.value(forKey: "preco"){
            cell.labelPrecoLote.text = "R$ \(campoPrecoLote)"
        }
        if let campoAreaLote = lote.value(forKey: "area"){
            cell.labelAreaLotes.text = "Área: \(campoAreaLote)"
        }
        if let campoDescricaoLote = lote.value(forKey: "descricao"){
            cell.labelDescricaoLote.text = campoDescricaoLote as? String
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let alturaCelula = collectionView.bounds.height / 1
        return CGSize(width: 340, height: 383)
    }

    

}
