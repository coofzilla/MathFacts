//
//  MathFactsViewModel.swift
//  MathFacts
//
//  Created by Jeric Hernandez on 1/21/24.
//

import SwiftUI

class MathFactsViewModel: ObservableObject {
    private static func createMathGame() -> MathGame {
        return MathGame(cards: generateCards(upTo: 10, using: .add))
    }

    static func generateCards(upTo number: Int, using operation: MathGame.MathOperation) -> [MathGame.Card] {
        var generatedCards = [MathGame.Card]()

        let symbol = operation.symbol

        for i in 0...number {
            for j in 0...number {
                let expression1 = "\(i) \(symbol) \(j)"
                let expression2 = "\(j) \(symbol) \(i)"
                let answer = operation.evaluate(i, j)

                generatedCards.append(MathGame.Card(expression: expression1, answer: answer))
                generatedCards.append(MathGame.Card(expression: expression2, answer: answer))
            }
        }

        return generatedCards.shuffled()
    }

    @Published private var model = createMathGame()

    var cards: [MathGame.Card] {
        return model.cards
    }
}
