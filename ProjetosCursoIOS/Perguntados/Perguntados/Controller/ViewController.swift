//
//  ViewController.swift
//  Perguntados
//
//  Created by Renilson Moreira Ferreira on 04/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    let myProvider = PerguntasProvider()
    var listaDePerguntasViewModel: [PerguntasViewModel] = []
    
    
    @IBOutlet weak var LabelPergunta: UILabel!
    @IBOutlet weak var buttonResposta1: UIButton!
    @IBOutlet weak var buttonResposta2: UIButton!
    @IBOutlet weak var buttonResposta3: UIButton!
    @IBOutlet weak var buttonResposta4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataPerguntas()
        
    
    }

    //MARK: Retorna dados do array
    func getDataPerguntas(){
        myProvider.getData { (results) in
            for i in 0...results.count-1 {
                guard let category = results[i].category else{return}
                guard let type = results[i].type else{return}
                guard let difficulty = results[i].difficulty else{return}
                guard let question = results[i].question else{return}
                guard let correctAnswer = results[i].correctAnswer else{return}
                guard let incorrectAnswers = results[i].incorrectAnswers else{return}
                let perguntasAtual = PerguntasViewModel(category: category, type: type, difficulty: difficulty, question: question, correctAnswer: correctAnswer, incorrectAnswers: incorrectAnswers)
                
                self.listaDePerguntasViewModel.append(perguntasAtual)
            }
            
        }
    }
    
    
        
    @IBAction func buttonListaPerguntas(_ sender: Any) {
            
        for i in 0...listaDePerguntasViewModel.count-1{
                let correta = listaDePerguntasViewModel[i].correctAnswer
                let incorreta: [String]? = listaDePerguntasViewModel[i].incorrectAnswers
                LabelPergunta?.text = listaDePerguntasViewModel[i].question
                buttonResposta1.setTitle(correta, for: .normal)
                buttonResposta2.setTitle(incorreta?[0], for: .normal)
                buttonResposta3.setTitle(incorreta?[1], for: .normal)
                buttonResposta4.setTitle(incorreta?[2], for: .normal)
            }
                
        }
    
    
    
    
 }

