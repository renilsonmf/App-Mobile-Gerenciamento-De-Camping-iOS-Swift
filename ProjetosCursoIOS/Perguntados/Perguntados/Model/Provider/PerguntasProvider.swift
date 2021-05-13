//
//  PerguntasProvider.swift
//  Perguntados
//
//  Created by Renilson Moreira Ferreira on 05/05/21.
//

import Foundation

class PerguntasProvider {
    
    func getData(completion:@escaping([Result]) -> Void)  {
        
        let urlString = "https://opentdb.com/api.php?amount=10&category=21&type=multiple"
        guard let url = URL(string: urlString) else{return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            let response = response as! HTTPURLResponse
            guard let data = data else {return}
            switch response.statusCode {
            case 404:
                print("404 Pagina não encontrada")
            default:
                print("")
                break
            }
            do{
                let perguntas = try JSONDecoder().decode(PerguntasAPI.self, from: data)
                guard let pergunta = perguntas.results else {return}
                completion(pergunta)
            }catch{
                print("Erro na requisição: \(error)")
            }
    }//task
        task.resume()
}//getData

}

