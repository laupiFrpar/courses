//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pierre-Louis Launay on 17/09/2023.
//

import SwiftUI

// Challenge Project 3
// https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up
struct FlagImage: View {
    var country: String
    
    var body: some View {
        Image(country)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}
// End Challenge Project 3

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
//    @State private var showingAlert = false
//
//    var body: some View {
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
//        Button("Show Alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("OK", role: .cancel) { }
//        } message: {
//            Text("Please read this.")
//        }
//    }
    
    // Stacking up buttons
    // https://www.hackingwithswift.com/books/ios-swiftui/stacking-up-buttons
    // Showing the player’s score with an alert
    // https://www.hackingwithswift.com/books/ios-swiftui/showing-the-players-score-with-an-alert
    // Styling our flags
    // https://www.hackingwithswift.com/books/ios-swiftui/styling-our-flags
    // Upgrading our design
    // https://www.hackingwithswift.com/books/ios-swiftui/upgrading-our-design
    let maxQuestions = 8
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var currentScore = 0
    @State private var currentQuestion = 0
    @State private var showingLastQuestion = false
    
    var body: some View {
        ZStack {
//            Color.blue
//            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            RadialGradient(stops: [
//                .init(color: .blue, location: 0.3),
//                .init(color: .red, location: 0.3),
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
                Text("Score: \(currentScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
//                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
//                            Image(countries[number])
//                                .renderingMode(.original)
//                                .clipShape(Capsule())
//                                .shadow(radius: 5)
                            // Challeng`e Project 3
                            // https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up
                            FlagImage(country: countries[number])
                            // End Challenge Project 3
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(currentScore)")
        }
        .alert("Last question", isPresented: $showingLastQuestion) {
            Button("Continue", action: resetQuestion)
        } message: {
            Text("Your score is \(currentScore)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            currentScore += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
            currentScore -= 1
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        currentQuestion += 1
        
        if currentQuestion == 8 {
            showingLastQuestion = true
        } else {
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
    }
    
    func resetQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        currentQuestion = 1
        currentScore = 0
        showingLastQuestion = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
