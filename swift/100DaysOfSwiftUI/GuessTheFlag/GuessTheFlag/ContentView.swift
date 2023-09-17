//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pierre-Louis Launay on 17/09/2023.
//

import SwiftUI

struct ContentView: View {
    // Using stacks to arrange views
    // https://www.hackingwithswift.com/books/ios-swiftui/using-stacks-to-arrange-views
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Hello, world!")
//            Text("This is another text view")
//        }
//        VStack(alignment: .leading) {
//            Text("Hello, world!")
//            Text("This is another text view")
//        }
//        HStack(spacing: 20) {
//            Text("Hello, world!")
//            Text("This is another text view")
//        }
//        VStack {
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//        }
//        VStack {
//            Spacer()
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//            Spacer()
//        }
//        ZStack {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//        VStack {
//            HStack {
//                Text("1")
//                Text("2")
//                Text("3")
//            }
//            HStack {
//                Text("4")
//                Text("5")
//                Text("6")
//            }
//            HStack {
//                Text("7")
//                Text("8")
//                Text("9")
//            }
//        }
//    }
    
    // Colors and frames
    // https://www.hackingwithswift.com/books/ios-swiftui/colors-and-frames
//    var body: some View {
//        ZStack {
//            Text("Your content")
//        }
//        .background(.red)
//        ZStack {
//            Color.red
//            Text("Your content")
//        }
//        ZStack {
//            Color.red
//                .frame(width: 200, height: 200)
//            Text("Your content")
//        }
//        ZStack {
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("Your content")
//        }
//        ZStack {
//            Color(red: 1, green: 0.8, blue: 0)
//            Text("Your content")
//        }
//        ZStack {
//            Color.red
//            Text("Your content")
//        }
//        .ignoresSafeArea()
//        ZStack {
//            VStack {
//                Color.red
//                Color.blue
//            }
//            Text("Your content")
//                .foregroundColor(.secondary)
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
//    }
    
    // Gradients
    // https://www.hackingwithswift.com/books/ios-swiftui/gradients
//    var body: some View {
//        LinearGradient(gradient: Gradient(stops: [
//            Gradient.Stop(color: .white, location: 0.45),
//            Gradient.Stop(color: .black, location: 0.55),
//        ]), startPoint: .top, endPoint: .bottom)
//        LinearGradient(gradient: Gradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55),
//        ]), startPoint: .top, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
//    }
    
    // Buttons and images
    // https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images
//    var body: some View {
//        Button("Delete selection") {
//            print("Now deleting...")
//        }
//        Button("Delete selection", action: executeDelete)
//        Button("Delete selection", role: .destructive, action: executeDelete)
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//                .tint(.mint)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//        }
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)
//        }
//        Button {
//            print("Button was tapped!")
//        } label: {
//            Image(systemName: "pencil")
//        }
//        Button {
//            print("Button was tapped!")
//        } label: {
//            Label("Edit", systemImage: "pencil")
//        }
//    }
//    func executeDelete() {
//        print("Now deleting...")
//    }
    
    // Showing alert messages
    // https://www.hackingwithswift.com/books/ios-swiftui/showing-alert-messages
    @State private var showingAlert = false
    
    var body: some View {
//        Button("Show Alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("OK") { }
//        }
//
//        Button("Show Alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) { }
//            Button("Cancel", role: .cancel) { }
//        }
//        
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
