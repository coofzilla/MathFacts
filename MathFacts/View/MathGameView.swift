//
//  MathGameView.swift
//  MathFacts
//
//  Created by Jeric Hernandez on 1/21/24.
//

import SwiftUI

struct MathGameView: View {
    @ObservedObject var viewModel: MathFactsViewModel

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print(viewModel.cards)
            }
    }
}

#Preview {
    MathGameView(viewModel: MathFactsViewModel())
}
