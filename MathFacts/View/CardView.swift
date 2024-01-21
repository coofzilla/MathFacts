//
//  CardView.swift
//  MathFacts
//
//  Created by Jeric Hernandez on 1/21/24.
//

import SwiftUI

struct CardView: View {
    let card: MathGame.Card

    var body: some View {
        ZStack {
            Text("1 + 1")
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CardView(card: MathGame.Card(expression: "1 + 1", answer: 2, isFaceUp: true))
}
