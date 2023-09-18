//
//  ContentView.swift
//  ViewsAndModifier
//
//  Created by Pierre-Louis Launay on 18/09/2023.
//

import SwiftUI

// Custom modifiers
// https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
//struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            .padding()
//            .background(.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
//}
//
//extension View {
//    func titleStyle() -> some View {
//        modifier(Title())
//    }
//}
//
//struct Watermark: ViewModifier {
//    var text: String
//
//    func body(content: Content) -> some View {
//        ZStack(alignment: .bottomTrailing) {
//            content
//            Text(text)
//                .font(.caption)
//                .foregroundColor(.white)
//                .padding(5)
//                .background(.black)
//        }
//    }
//}
//
//extension View {
//    func watermarked(with text: String) -> some View {
//        modifier(Watermark(text: text))
//    }
//}
// End Custom modifiers

// Custom containers
// https://www.hackingwithswift.com/books/ios-swiftui/custom-containers
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
//    let content: (Int, Int) -> Content
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}
// End Custom containers

struct ContentView: View {
    // Why does SwiftUI use structs for views?
    // https://www.hackingwithswift.com/books/ios-swiftui/why-does-swiftui-use-structs-for-views
    // What is behind the main SwiftUI view?
    // https://www.hackingwithswift.com/books/ios-swiftui/what-is-behind-the-main-swiftui-view
    //    var body: some View {
    //        Text("Hello, world!")
    //            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //            .background(.red)
    //    }
    
    // Why modifier order matters
    // https://www.hackingwithswift.com/books/ios-swiftui/why-modifier-order-matters
    //    var body: some View {
    //        Button("Hello, world!") {
    //            print(type(of: self.body))
    //        }
    //            .frame(width: 200, height: 200)
    //            .background(.red)
    //
    //        Text("Hello, world!")
    //            .padding()
    //            .background(.red)
    //            .padding()
    //            .background(.blue)
    //            .padding()
    //            .background(.green)
    //            .padding()
    //            .background(.yellow)
    //    }
    
    // Why does SwiftUI use “some View” for its view type?
    // https://www.hackingwithswift.com/books/ios-swiftui/why-does-swiftui-use-some-view-for-its-view-type
    //    var body: Text {
    //        Text("Hello, world!")
    //    }
    
    // Conditional modifiers
    // https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers
    //    @State private var useRedText = false
    //
    //    var body: some View {
    //        if useRedText {
    //           Button("Hello World") {
    //               useRedText.toggle()
    //           }
    //           .foregroundColor(.red)
    //       } else {
    //           Button("Hello World") {
    //               useRedText.toggle()
    //           }
    //           .foregroundColor(.blue)
    //       }
    //        Button("Hello World") {
    //            // flip the Boolean between true and false
    //            useRedText.toggle()
    //        }
    //        .foregroundColor(useRedText ? .red : .blue)
    //    }
    
    // Environment modifiers
    // https://www.hackingwithswift.com/books/ios-swiftui/environment-modifiers
    //    var body: some View {
    //        VStack {
    //            Text("Gryffindor")
    //                .font(.largeTitle)
    //            Text("Hufflepuff")
    //            Text("Ravenclaw")
    //            Text("Slytherin")
    //        }
    //        .font(.title)
    //        VStack {
    //            Text("Gryffindor")
    //                .blur(radius: 0)
    //            Text("Hufflepuff")
    //            Text("Ravenclaw")
    //            Text("Slytherin")
    //        }
    //        .blur(radius: 5)
    //    }
    
    // Views as properties
    // https://www.hackingwithswift.com/books/ios-swiftui/views-as-properties
    //    let motto1 = Text("Draco dormiens")
    //    var motto1: some View {
    //        Text("Draco dormiens")
    //    }
    //    let motto2 = Text("nunquam titillandus")
    //    var spells: some View {
    //        VStack {
    //            Text("Lumos")
    //            Text("Obliviate")
    //        }
    //    }
    //    var spells: some View {
    //        Group {
    //            Text("Lumos")
    //            Text("Obliviate")
    //        }
    //    }
    //    @ViewBuilder var spells: some View {
    //        Text("Lumos")
    //        Text("Obliviate")
    //    }
    //
    //    var body: some View {
    //        VStack {
    //            motto1
    //                .foregroundColor(.red)
    //            motto2
    //                .foregroundColor(.blue)
    //        }
    //    }
    
    // View composition
    // https://www.hackingwithswift.com/books/ios-swiftui/view-composition
//    struct CapsuleText: View {
//        var text: String
//
//        var body: some View {
//            Text(text)
//                .font(.largeTitle)
//                .padding()
//                .foregroundColor(.white)
//                .background(.blue)
//                .clipShape(Capsule())
//        }
//    }
//    struct CapsuleText2: View {
//        var text: String
//
//        var body: some View {
//            Text(text)
//                .font(.largeTitle)
//                .padding()
//                .background(.blue)
//                .clipShape(Capsule())
//        }
//    }
//    var body: some View {
//        Text("First")
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(.white)
//            .background(.blue)
//            .clipShape(Capsule())
//
//        Text("Second")
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(.white)
//            .background(.blue)
//            .clipShape(Capsule())
//    }
//    var body: some View {
//        VStack(spacing: 10) {
//            CapsuleText(text: "First")
//            CapsuleText(text: "Second")
//        }
//    }
//    var body: some View {
//        VStack(spacing: 10) {
//            CapsuleText2(text: "First")
//                .foregroundColor(.white)
//            CapsuleText2(text: "Second")
//                .foregroundColor(.yellow)
//        }
//    }
    
    // Custom modifiers
    // https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
//    var body: some View {
//        Text("Hello world!")
//            .modifier(Title())
//            .titleStyle()
//        Color.blue
//            .frame(width: 300, height: 200)
//            .watermarked(with: "Hacking with Swift")
//    }
    
    // Custom containers
    // https://www.hackingwithswift.com/books/ios-swiftui/custom-containers
    var body: some View {
//        GridStack(rows: 4, columns: 4) { row, col in
//            Text("R\(row) C\(col)")
//        }
//        GridStack(rows: 4, columns: 4) { row, col in
//            HStack {
//                Image(systemName: "\(row * 4 + col).circle")
//                Text("R\(row) C\(col)")
//            }
//        }
        // with @ViewBuilder
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
