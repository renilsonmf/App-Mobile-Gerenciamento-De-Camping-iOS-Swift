//
//  ViewController.swift
//  CustomCell
//
//  Created by Renilson Moreira Ferreira on 07/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource{
  
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    private var arrayPerson: [String] = ["Renilson Moreira", "Larissa Fernandes", "Gustavo Araujo", "Jonas Jesus"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    
        
        
        self.myTableView.register(UINib(nibName: "MyCustomCell", bundle: nil), forCellReuseIdentifier: "MyCustomCell")
        
        self.myCollectionView.register(UINib(nibName: "MyCollection", bundle: nil), forCellWithReuseIdentifier: "MyCollection")
        
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.myTableView.tableFooterView = UIView() // Retira as celulas em branco
    }

    var spinner = UIActivityIndicatorView(style: .whiteLarge)

        override func loadView() {
            view = UIView()
            view.backgroundColor = UIColor(white: 0, alpha: 0.7)

            spinner.translatesAutoresizingMaskIntoConstraints = false
            spinner.startAnimating()
            view.addSubview(spinner)

            spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    // MARK: - Table View MyCustomCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPerson.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCustomCell? = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as? MyCustomCell
        cell?.personImageView.image = UIImage(named: self.arrayPerson[indexPath.row])
        cell?.personNameLabel.text = self.arrayPerson[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    // MARK: - CollectionView MyCollection
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 48
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MyCollection? = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollection", for: indexPath) as? MyCollection
        return cell ?? UICollectionViewCell()
    }
    
}

}
