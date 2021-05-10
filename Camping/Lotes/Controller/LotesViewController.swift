//
//  LotesViewController.swift
//  Camping
//
//  Created by Renilson Moreira Ferreira on 07/05/21.
//

import UIKit

class LotesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    @IBOutlet weak var myCollection: UICollectionView!
    override func viewDidLoad() {
        myCollection.delegate = self
        myCollection.dataSource = self

         

        super.viewDidLoad()
        
    }
    
    //MARK: CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
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
        
        
        cell.LabelDescricaoLotes.text = "Área coberta por arvores e com duas barracas gratis para uso do cliente"
        cell.labelLoteLotes.text = "Lote 90"
        cell.LabelPrecoLotes.text = "R$ 500,99"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let alturaCelula = collectionView.bounds.height / 1
        return CGSize(width: 340, height: 383)
    }

    

}
