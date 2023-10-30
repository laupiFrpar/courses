//
//  ContentView.swift
//  Project6
//
//  Created by Pierre-Louis Launay on 30/10/2023.
//

import SwiftUI

// Building custom transitions using ViewModifier
// https://www.hackingwithswift.com/books/ios-swiftui/building-custom-transitions-using-viewmodifier
struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

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
//    @State private var animationAmount = 0.0
//    
//    var body: some View {
//        Button("Tap Me") {
//            withAnimation(.spring(duration: 1, bounce: 0.5)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .rotation3DEffect(
//            .degrees(animationAmount),
//            axis: (x: 0, y: 1, z: 0)
//        )
//    }
    
    // Controlling the animation stack
    // https://www.hackingwithswift.com/books/ios-swiftui/controlling-the-animation-stack
    
//    @State private var enabled = false
//    
//    var body: some View {
//        Button("Tap Me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .animation(.default, value: enabled)
//        .animation(nil, value: enabled)
//        .foregroundStyle(.white)
//        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//        .animation(.default, value: enabled)
//        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
//    }
    
    // Animating gestures
    // https://www.hackingwithswift.com/books/ios-swiftui/animating-gestures
//    let letters = Array("Hello Swift")
//    @State private var enabled = false
//    @State private var dragAmount = CGSize.zero
//    
//    var body: some View {
//        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(.rect(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in dragAmount = .zero }
//            )
//            .animation(.bouncy, value: dragAmount)
//        HStack(spacing: 0) {
//            ForEach(0..<letters.count, id: \.self) { num in
//                Text(String(letters[num]))
//                    .padding(5)
//                    .font(.title)
//                    .background(enabled ? .blue : .red)
//                    .offset(dragAmount)
//                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
//            }
//        }
//        .gesture(
//            DragGesture()
//                .onChanged { dragAmount = $0.translation }
//                .onEnded { _ in
//                    dragAmount = .zero
//                    enabled.toggle()
//                }
//        )
//    }
    
    // Showing and hiding views with transitions
    // https://www.hackingwithswift.com/books/ios-swiftui/showing-and-hiding-views-with-transitions
//    @State private var isShowingRed = false
//    
//    var body: some View {
//        VStack {
//            Button("Tap Me") {
//                withAnimation {
//                    isShowingRed.toggle()
//                }
//            }
//            
//            if isShowingRed {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                    .transition(.scale)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
//            }
//        }
//    }
    
    // Building custom transitions using ViewModifier
    // https://www.hackingwithswift.com/books/ios-swiftui/building-custom-transitions-using-viewmodifier
    @State private var isShowingRed = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
