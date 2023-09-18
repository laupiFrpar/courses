//
//  ContentView.swift
//  ChallengeProject3
//
//  Created by Pierre-Louis Launay on 18/09/2023.
//

import SwiftUI

// Challenge Project 3
// https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueLargeTitle() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .blueLargeTitle()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
