//
//  ContentView.swift
//  Project6
//
//  Created by Pierre-Louis Launay on 30/10/2023.
//

import SwiftUI

struct ContentView: View {
    // Creating implicit animations
    // https://www.hackingwithswift.com/books/ios-swiftui/creating-implicit-animations
    
//    @State private var animationAmount = 1.0
//    
//    var body: some View {
//        VStack {
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(.default, value: animationAmount)
//            .blur(radius: (animationAmount - 1) * 3)
//        }
//    }
    
    // Customizing animations in SwiftUI
    // https://www.hackingwithswift.com/books/ios-swiftui/customizing-animations-in-swiftui
//    @State private var animationAmount = 1.0
//    
//    var body: some View {
//        VStack {
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(
//                .linear,
//                .spring(duration: 1, bounce: 0.9),
//                .easeInOut(duration: 2)
//                .easeInOut(duration: 2)
//                    .delay(1)
//                .easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true),
//                    .repeatForever(autoreverses: true),
//                value: animationAmount
//            )
//            .overlay(
//                Circle()
//                    .stroke(.red)
//                    .scaleEffect(animationAmount)
//                    .opacity(2 - animationAmount)
//                    .animation(
//                        .easeInOut(duration: 1)
//                            .repeatForever(autoreverses: false),
//                        value: animationAmount
//                    )
//            )
//            .blur(radius: (animationAmount - 1) * 3)
//            .onAppear {
//                animationAmount = 2
//            }
//        }
//    }
    
    // Animating bindings
    // https://www.hackingwithswift.com/books/ios-swiftui/animating-bindings
//    @State private var animationAmount = 1.0
//    
//    var body: some View {
//        print(animationAmount)
//        
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            
//            Spacer()
//            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }
//    }
    
    // Creating explicit animations
    // https://www.hackingwithswift.com/books/ios-swiftui/creating-explicit-animations
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0, y: 1, z: 0)
        )
    }
}

#Preview {
    ContentView()
}
