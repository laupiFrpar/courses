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
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//        let input = "a b c"
//        let letters = input.components(separatedBy: " ")
//        
//        let input2 = """
//                    a
//                    b
//                    c
//                    """
//        let letters2 = input2.components(separatedBy: "\n")
//        
//        let letter = letters.randomElement()
//        
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
//        
//        let word = "swift"
//        let checker = UITextChecker()
//        
//        let range = NSRange(location: 0, length: word.utf16.count)
//        
//        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//        
//        let allGood = misspelledRange.location == NSNotFound
//    }
    
    // Adding to a list of words
    // https://www.hackingwithswift.com/books/ios-swiftui/adding-to-a-list-of-words
    // Running code when our app launches
    // https://www.hackingwithswift.com/books/ios-swiftui/running-code-when-our-app-launches
    // Validating words with UITextChecker
    // https://www.hackingwithswift.com/books/ios-swiftui/validating-words-with-uitextchecker
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
//                        .textInputAutocapitalization(.never)
                        .autocapitalization(.none)
                }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(errorMessage)
            }
        }
    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell that wod from '\(rootWord)'!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        
        newWord = ""
    }
    
    func startGame() {
        // 1. Find the URL for start.txt in our app bundle
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            // 2. Load start.txt into a string
            if let startWords = try? String(contentsOf: startWordsURL) {
                // 3. Split the string up into an array of strings, splitting on line breaks
                let allWords = startWords.components(separatedBy: "\n")

                // 4. Pick one random word, or use "silkworm" as a sensible default
                rootWord = allWords.randomElement() ?? "silkworm"

                // If we are here everything has worked, so we can exit
                return
            }
        }

        // If were are *here* then there was a problem – trigger a crash and report the error
        fatalError("Could not load start.txt from bundle.")
    }
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

#Preview {
    ContentView()
}
