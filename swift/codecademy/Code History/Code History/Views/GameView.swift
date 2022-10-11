//
//  ContentView.swift
//  Code History
//
//  Created by Pierre-Louis Launay on 23/09/2022.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Text(viewModel.questionProgressText)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                    QuestionView(question: viewModel.currentQuestion)
                }
            }
        }
        .background(
            NavigationLink(
                destination: ScoreView(
                    viewModel: ScoreViewModel(
                        correctGuesses: viewModel.correctGuesses,
                        incorrectGuesses: viewModel.incorrectGuesses
                    )
                ),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView() }
            )
        )
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
