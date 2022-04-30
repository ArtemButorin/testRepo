//
//  Trivia.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var forrmattedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Ошибка форматирования вопроса \(error)")
                return ""
            }
        }
        
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrect = try incorrectAnswers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswers = correct + incorrect
                
                return allAnswers.shuffled()
            } catch {
                print("Ошибка форматирования ответа \(error)")
                return []
            }
        }
    }
}
