//
//  MathGame.swift
//  MathFacts
//
//  Created by Jeric Hernandez on 1/21/24.
//

import Foundation

struct MathGame {
    private(set) var cards: [Card]

    enum MathOperation {
        case add, subtract, multiply, divide

        var symbol: String {
            switch self {
            case .add:
                return "+"
            case .subtract:
                return "-"
            case .multiply:
                return "×"
            case .divide:
                return "÷"
            }
        }

        func evaluate(_ a: Int, _ b: Int) -> Int {
            switch self {
            case .add:
                return a + b
            case .subtract:
                return a - b
            case .multiply:
                return a * b
            case .divide:
                return b != 0 ? a / b : 0 // Handling divide by zero
            }
        }
    }

    struct Card {
        let expression: String
        let answer: Int
        var isFaceUp = false
    }
}
