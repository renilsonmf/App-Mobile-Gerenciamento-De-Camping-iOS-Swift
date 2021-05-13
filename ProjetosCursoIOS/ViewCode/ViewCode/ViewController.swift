//
//  ViewController.swift
//  ViewCode
//
//  Created by Renilson Moreira Ferreira on 06/05/21.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        var button   = UIButton(type: UIButton.ButtonType.System) as UIButton
        let button = UIButton(type: .system) // let preferred over var here
       button.frame = CGRectMake(100, 100, 100, 50)
        button.backgroundColor = UIColor.green
        button.setTitle("Button", for: UIControl.State.normal)
        button.addTarget(self, action: "Action:", forControlEvents: UIControl.Event.TouchUpInside)
       self.view.addSubview(button)
      }



}

