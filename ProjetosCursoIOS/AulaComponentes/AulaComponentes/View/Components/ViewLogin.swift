//
//  ViewCadastro.swift
//  AulaComponentes
//
//  Created by Renilson Moreira Ferreira on 07/04/21.
//

import Foundation
import UIKit

class ViewLogin: UIView {
    
        var view: UIView!
        override init(frame: CGRect) {
            super.init(frame: frame)
            //xibSetup()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
        
        func setupUI() {
            self.backgroundColor = .yellow
        }
    
  }

    private extension ViewLogin {
        func xibSetup() {
            backgroundColor = UIColor.red
            view = loadNib()
            view.frame = bounds
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    extension UIView {
        func loadNib() -> UIView {
            let bundle = Bundle(for: type(of: self))
            let nibName = type(of: self).description().components(separatedBy: ".").last!
            let nib = UINib(nibName: nibName, bundle: bundle)
            return nib.instantiate(withOwner: self, options: nil).first as! UIView
        }
    }

