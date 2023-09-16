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
//    let students = ["Harry", "Hermione", "Ron"]
//    @State private var selectedStudent = "Harry"
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(students, id: \.self) {
//                        Text($0)
//                    }
//                }
//            }
//        }
//    }
    
    // Reading text from the user with TextField
    // https://www.hackingwithswift.com/books/ios-swiftui/reading-text-from-the-user-with-textfield
    // Creating pickers in a form
    // https://www.hackingwithswift.com/books/ios-swiftui/creating-pickers-in-a-form
    // Adding a segmented control for tip percentages
    // https://www.hackingwithswift.com/books/ios-swiftui/adding-a-segmented-control-for-tip-percentages
    // Calculating the total per person
    // https://www.hackingwithswift.com/books/ios-swiftui/calculating-the-total-per-person
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount",
                              value: $checkAmount,
                              format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
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
