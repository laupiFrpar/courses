//
//  ContentView.swift
//  WeSplit
//
//  Created by Pierre-Louis Launay on 16/09/2023.
//

import SwiftUI

struct ContentView: View {
    // Creating a Form
    // https://www.hackingwithswift.com/books/ios-swiftui/creating-a-form
//    var body: some View {
//        Form {
//            Section {
//                Text("Hello, world!")
//            }
//
//            Section {
//                Text("Hello, world!")
//                Text("Hello, world!")
//                Text("Hello, world!")
//            }
//        }
//    }
    
    // Adding a navigation bar
    // https://www.hackingwithswift.com/books/ios-swiftui/adding-a-navigation-bar
//    var body: some View {
//        NavigationView {
//            Form {
//                Section {
//                    Text("Hello, world!")
//                }
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
    
    // Modyfying program state
    // https://www.hackingwithswift.com/books/ios-swiftui/modifying-program-state
//    @State private var tapCount = 0
//
//    var body: some View {
//        Button("Tap Count: \(tapCount)") {
//            tapCount += 1
//        }
//    }
    
    // Binding state to user interface controls
    // https://www.hackingwithswift.com/books/ios-swiftui/binding-state-to-user-interface-controls
//    @State private var name = ""
//
//    var body: some View {
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Your name is \(name)")
//        }
//    }
    
    // Creating views in a loop
    // https://www.hackingwithswift.com/books/ios-swiftui/creating-views-in-a-loop
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
