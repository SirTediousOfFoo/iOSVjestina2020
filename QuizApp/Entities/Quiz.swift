//
//  Quiz.swift
//  QuizApp
//
//  Created by five on 29/04/2020.
//

import Foundation

// MARK: - Quizes
struct Quizes: Codable, Equatable {
    let quizzes: [Quiz]
}

// MARK: - Quiz
struct Quiz: Codable, Equatable {
    let id: Int
    let title, quizDescription, category: String
    let level: Int
    let image: String
    let questions: [Question]

    enum CodingKeys: String, CodingKey {
        case id, title
        case quizDescription = "description"
        case category, level, image, questions
    }
}

