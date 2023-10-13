//
//  ContentView.swift
//  WordScramble
//
//  Created by Pierre-Louis Launay on 13/10/2023.
//

import SwiftUI

struct ContentView: View {
    // Introducing List, your best friend
    // https://www.hackingwithswift.com/books/ios-swiftui/introducing-list-your-best-friend
//    let people = ["Finn", "Leia", "Luke", "Rey"]
//    
//    var body: some View {
//        List {
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
//        
//        List {
//            ForEach(0..<5) {
//                Text("Dynamic row \($0)")
//            }
//        }
//        
//        List {
//            Text("Static row 1")
//            Text("Static row 2")
//            
//            ForEach(0..<5) {
//                Text("Dynamic row \($0)")
//            }
//            
//            Text("Static row 3")
//            Text("Static row 4")
//        }
//        
//        List {
//            Section("Section 1") {
//                Text("Static row 1")
//                Text("Static row 2")
//            }
//            
//            Section("Section 2") {
//                ForEach(0..<5) {
//                    Text("Dynamic row \($0)")
//                }
//            }
//            
//            Section("Section 3") {
//                Text("Static row 3")
//                Text("Static row 4")
//            }
//        }
//        
//        List(0..<5) {
//            Text("Dynamic row \($0)")
//        }
//        
//        List(people, id: \.self) {
//            Text($0)
//        }
//        
//        List {
//            Text("Static row")
//            ForEach(people, id: \.self) {
//                Text($0)
//            }
//            Text("Static row")
//        }
//    }
    
    // Loading resources from your app bundle
    // https://www.hackingwithswift.com/books/ios-swiftui/loading-resources-from-your-app-bundle
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//    
//    func loadFile() {
//        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
//            // we found the file in our bundle
//            if let fileContents = try? String(contentsOf: fileURL) {
//                // we loaded the file into a string !
//            }
//        }
//    }
    
    // Working with strings
    // https://www.hackingwithswift.com/books/ios-swiftui/working-with-strings
    var body: some View {
        Text("Hello, world!")
            .padding()
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let input2 = """
                    a
                    b
                    c
                    """
        let letters2 = input2.components(separatedBy: "\n")
        
        let letter = letters.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
