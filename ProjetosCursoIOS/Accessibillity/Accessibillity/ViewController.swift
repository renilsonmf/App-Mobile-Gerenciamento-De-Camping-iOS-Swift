//
//  ViewController.swift
//  Accessibillity
//
//  Created by Renilson Moreira Ferreira on 12/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BotaoVoltar: UILabel!
    @IBOutlet weak var editText01: UITextField!
    @IBOutlet weak var edittext02: UITextField!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var button: UIButton!
    
    var isButtonApply = false
    
    override func viewDidLoad() {

            super.viewDidLoad()
        }

        override func viewDidAppear(_ animated: Bool) {

            if isButtonApply {

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {

                    UIAccessibility.post(notification: .screenChanged, argument: self.button)

                }

            }

        }

        

        @IBAction func buttonAction(_ sender: UIButton) {

            isButtonApply = true

            

        }

        

        @IBAction func btOnOffAction(_ sender: UISwitch) {

            if sender.isOn {

               UIAccessibility.post(notification: .screenChanged, argument: "Botão ligado")

            } else {

                UIAccessibility.post(notification: .screenChanged, argument: "Botão desligado")

            }

        }

    }


