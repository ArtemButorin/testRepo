//
//  Answer.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
