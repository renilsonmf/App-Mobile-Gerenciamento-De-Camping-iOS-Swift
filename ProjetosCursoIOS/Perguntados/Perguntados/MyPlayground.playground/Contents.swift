import UIKit

//var teste = [1, 2, 3, 4, 10, 11]
//func simpleArraySum(ar: [Int]) -> Int {
//    // Write your code here
//   var a = 0
//    for i in teste {
//        a += i
//    }
//    return a
//}
//
//print(simpleArraySum(ar: teste))
//




//var a = [3, 1, 2]
//var b = [1, 2, 4]
//func compareTriplets(a: [Int], b: [Int]) -> [Int] {
//
//    var position = 0
//       var alice = 0
//       var bob = 0
//       for i in a {
//           var posicao = b[position]
//           if i > posicao {
//               alice = alice + 1
//           } else if i < posicao {
//               bob = bob + 1
//           }
//           position = position + 1
//       }
//       return [alice, bob]
//
//}
//print(compareTriplets(a: a, b: b))


//func diagonalDifference(arr: [[Int]]) -> Int {
//    // Write your code here
//    var soma1 = 0
//        var soma2 = 0
//        for i in 0...arr.count-1{
//            for j in 0...arr.count-1{
//                if i == j{
//                    soma1 = soma1 + arr[i][j]
//                }
//                if j == arr.count-1 - i{
//                    soma2 = soma2 + arr[i][j]
//                }
//            }
//        }
//
//        if soma1 > soma2{
//            return soma1 - soma2
//        }else{
//            return soma2 - soma1
//        }
//
//    }
var imprime = 90
var array1 = [4, 7, 8, 2, 1]

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    
    for i in array1{
        var indice = array1[i]
        print(String(format: "%.6f", indice))
    }

}

print(plusMinus(arr: array1))
