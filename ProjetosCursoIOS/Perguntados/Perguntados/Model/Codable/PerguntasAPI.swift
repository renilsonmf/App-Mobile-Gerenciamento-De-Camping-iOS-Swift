// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let perguntasAPI = try? newJSONDecoder().decode(PerguntasAPI.self, from: jsonData)

import Foundation

// MARK: - PerguntasAPI
struct PerguntasAPI: Codable {
    let responseCode: Int
    let results: [Result]?

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let category: Category?
    let type: TypeEnum?
    let difficulty: Difficulty?
    let question, correctAnswer: String?
    let incorrectAnswers: [String]?

    enum CodingKeys: String, CodingKey {
        case category, type, difficulty, question
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
    }
}

enum Category: String, Codable {
    case sports = "Sports"
}

enum Difficulty: String, Codable {
    case easy = "easy"
    case hard = "hard"
    case medium = "medium"
}

enum TypeEnum: String, Codable {
    case multiple = "multiple"
}
