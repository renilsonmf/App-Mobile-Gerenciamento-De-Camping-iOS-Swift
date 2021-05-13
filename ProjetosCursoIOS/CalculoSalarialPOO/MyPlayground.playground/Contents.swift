import UIKit

class Colaborador {
    var nome: String = "caio"
    var cargo: String = ""
    var salarioBruto: Double = 2000
    var salarioLiquido: Double = 0
}

//CALCULO SALARIO DESENVOLVEDOR
class CalculaSalarioDesenvolvedor: Colaborador{
    
    func calcula(salBruto: Double, salLiquido:Double) -> Double{
        var desconto: Double = 0
        if salLiquido > 3000{
            desconto = salBruto * 0.20
            let salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.10
            let salLiquido = salBruto - desconto
            return salLiquido
        }
     
    }
}

let imprimeDev: CalculaSalarioDesenvolvedor = CalculaSalarioDesenvolvedor()
 print("CALCULO DESENVOLVEDOR: \(imprimeDev.calcula(salBruto: imprimeDev.salarioBruto, salLiquido: imprimeDev.salarioBruto))")


//CALCULO SALARIO DBA E TESTADORES
class CalculaSalarioDBA: Colaborador{
    
    func calculaDBA(salBruto: Double, salLiquido:Double) -> Double{
        var desconto: Double = 0
        if salLiquido > 2500{
            desconto = salBruto * 0.25
            let salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.15
            let salLiquido = salBruto - desconto
            return salLiquido
        }
     
    }
}
let imprimeDBA: CalculaSalarioDBA = CalculaSalarioDBA()
 print("CALCULO DBA: \(imprimeDBA.calculaDBA(salBruto: imprimeDBA.salarioBruto, salLiquido: imprimeDBA.salarioBruto))")

//CALCULO SALARIO GERENCIA
class CalculaSalarioGerentes: Colaborador {
    
    func calculoGerente(salBruto: Double, salLiquido:Double) -> Double{
        var desconto: Double = 0
        if salLiquido > 7000{
            desconto = salBruto * 0.23
            let salLiquido = salBruto - desconto
            return salLiquido
        }else{
            desconto = salBruto * 0.18
            let salLiquido = salBruto - desconto
            return salLiquido
        }
     
    }

}

let imprimeGerentes: CalculaSalarioGerentes = CalculaSalarioGerentes()
print("CALCULO GERENTES: \(imprimeGerentes.calculoGerente(salBruto: imprimeGerentes.salarioBruto, salLiquido: imprimeGerentes.salarioLiquido))")

//class Animal {
//    var peso: Double = 0.0
//    var altura: Double = 0.0
//
//    func comer(){
//        print("O Animal está comendo")
//    }
//
//}
//
//class Cachorro: Animal {
//    var raca: String = ""
//
//    func latir(){
//        print("O cachorro está latindo")
//    }
//}
//
////Crio um objeto da superclasse animal
//let gato: Animal = Animal()
//gato.peso = 15.5
//gato.altura = 0.30
//gato.comer()
////Resultado: erro ao tentar executar o método latir, que é da subclasse
//
////Crio um objeto da subclasse cachorro
//let boxer: Cachorro = Cachorro()
//boxer.peso = 45.2
//boxer.altura = 1.00
//boxer.raca = "Boxer"
//boxer.comer()
//boxer.latir()
////Resultado: executa todos os métodos, tanto da classe "Cachorro" quanto da classe "Animal"
//
////Classe Pai / SuperClasse (Humano)
//class Humano {
//
//    func andar() {
//        print("Método andar na classe Humano")
//    }
//}
//let humano : Humano = Humano()
//humano.andar()
////Resultado: imprime "Método andar na classe Humano"
//
////Classe Filha / SubClasse (Filha)
//class Atleta : Humano {
//    override func andar() {
//        print("Método andar na classe Atleta")
//    }
//}
//
//let atleta: Atleta = Atleta()
//atleta.andar()
////Resultado: imprime "Método andar da classe Atleta"
