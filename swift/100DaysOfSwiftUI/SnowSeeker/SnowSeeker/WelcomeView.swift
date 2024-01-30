//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Pierre-Louis Launay on 30/01/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker!")
                .font(.largeTitle)
            Text("Please select a resort from the left-hand menu; swipe from the left edge to show iit.")
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    WelcomeView()
}
