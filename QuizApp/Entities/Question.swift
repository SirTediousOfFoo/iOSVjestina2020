//
//  Question.swift
//  QuizApp
//
//  Created by five on 29/04/2020.
//

import Foundation

// MARK: - Question
struct Question: Codable, Equatable {
    let id: Int
    let question: String
    let answers: [String]
    let correctAnswer: Int

    enum CodingKeys: String, CodingKey {
        case id, question, answers
        case correctAnswer = "correct_answer"
    }
}
