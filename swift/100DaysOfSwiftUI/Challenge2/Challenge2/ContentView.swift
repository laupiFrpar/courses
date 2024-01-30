//
//  ContentView.swift
//  Challenge2
//
//  Created by Pierre-Louis Launay on 18/09/2023.
//

import SwiftUI

struct MoveButton: View {
    let name: String
    let move: Int
    
    var body: some View {
        Button(name) {
            
        }
        .font(.largeTitle)
        .padding()
        .background(.blue)
        .clipShape(Capsule())
        .shadow(radius: 5)
    }
}

struct ContentView: View {
    let maxQuestion = 10
    let moves = ["🪨", "📄", "✂️"]
    
    @State private var appMove = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    @State private var currentQuestion = 1
    @State private var showingScore = false
    
    var scoreTitle = "Score: "
    
    var body: some View {
        VStack {
            Text("Score: \(score)")
            
            Text("My move: \(moves[appMove])")
            
            if shouldWin {
                Text("You should win")
            } else {
                Text("You should lose")
            }
            
            Text("Attempt: \(currentQuestion)")
            
            HStack {
                ForEach(0..<3) { move in
//                    MoveButton(name: moves[move], move: move)
                    Button(moves[move]) {
                        if isWin(playerMove: move) == shouldWin {
                            score += 1
                        }
                        
                        if currentQuestion < 10 {
                            nextTurn()
                        } else {
                            showingScore = true
                        }
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(.blue)
                    .clipShape(Capsule())
                    .shadow(radius: 5)
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Replay", action: resetGame)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    func nextTurn() {
        currentQuestion += 1
        shouldWin.toggle()
        appMove = Int.random(in: 0...2)
    }
    
    func resetGame() {
        print("Current question: \(currentQuestion)")
        currentQuestion = 1
        shouldWin.toggle()
        appMove = Int.random(in: 0...2)
        score = 0
        showingScore = false
    }
    
    /**
     * 0 => 🪨
     * 1 => 📄
     * 2 => ✂️
     */
    func isWin(playerMove: Int) -> Bool {
        print("isWin: playerMove \(playerMove) and appMove \(appMove) and shouldWin \(shouldWin)")
        /**
         * The player win if :
         *
         * - 🪨 vs ✂️ (0 vs 2)
         * - 📄 vs 🪨 (1 vs 0)
         * - ✂️ vs 📄 (2 vs 1)
         */
        if (playerMove == 0 && appMove == 2)
            || (playerMove == 1 && appMove == 0)
            || (playerMove == 2 && appMove == 1)
        {
            return true
        }
        
        /**
         * The player lose if :
         *
         * - 🪨 vs 🪨
         * - 📄 vs 📄
         * - ✂️ vs ✂️
         * - 🪨 vs 📄
         * - 📄 vs ✂️
         * - ✂️ vs 🪨
         */
        return false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
