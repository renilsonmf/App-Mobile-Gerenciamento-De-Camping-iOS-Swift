//
//  ViewContato.swift
//  AulaComponentes
//
//  Created by Renilson Moreira Ferreira on 07/04/21.
//

import Foundation
import UIKit

class ViewContato: UIView {
    
    func addContato(nome: String, y: Int, cor: UIColor){
        let vNome = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        vNome.text = nome
        vNome.textAlignment = .center
        vNome.center = CGPoint(x: 160, y: y)
        vNome.backgroundColor = cor
        self.addSubview(vNome)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupUIContato(cor: EverisBecaColor) {
        self.backgroundColor = cor.corSelecionada
    }
    
}
