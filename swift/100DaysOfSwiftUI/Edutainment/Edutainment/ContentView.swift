//
//  ContentView.swift
//  Edutainment
//
//  Created by Pierre-Louis Launay on 06/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var multiplicationTables = 2
    
    var body: some View {
        NavigationStack {
            Form {
                Text("How many multiplication tables would you like to train ?")
                
                Stepper("\(multiplicationTables)", value: $multiplicationTables, in: 2...12)
                
                Text("How many questions ?")
                HStack {
                    ForEach(1..<4) { num in
                        Button("\(String(num * 5))") {
                            // Set the number of questions into variable
                        }
                        .padding(20)
                        .foregroundColor(.white)
                        .background(.secondary)
                        .clipShape(.buttonBorder)
                    }
                }
            }
            .navigationTitle("Edutainment")
            
            Button("Start") {
                // Start the questions
            }
            .padding(25)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.buttonBorder)
        }
    }
}

#Preview {
    ContentView()
}
