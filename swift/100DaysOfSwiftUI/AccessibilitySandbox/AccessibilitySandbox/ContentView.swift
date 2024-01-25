//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Pierre-Louis Launay on 25/01/2024.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen three buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    @State private var value = 10
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = Int.random(in: 0...3)
            }
            .accessibilityLabel(labels[selectedPicture])
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
        
        // That being said, adding and removing traits wouldn't have been required at all if we had just used a
        // regular button rather than an image with a tap gesture. This is why it's preferable to use buttons rather
        // than onTapGesture() wherever possible, which here means code like this:
        Button {
            selectedPicture = Int.random(in: 0...3)
        } label: {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPicture])
        
        Image(decorative: "character")
            .accessibilityHidden(true)
        
        
        // VoiceOver sees that as two unrelated text views, and so it will either read “Your score is” or “1000”
        // depending on what the user has selected. Both of those are unhelpful, which is where the
        // .accessibilityElement(children:) modifier comes in: we can apply it to a parent view, and ask it to
        // combine children into a single accessibility element.
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .combine)
        
        // That works really well when the child views contain separate information, but in our case the children
        // really should be read as a single entity. So, the better solution here is to use
        // .accessibilityElement(children: .ignore) so the child views are invisible to VoiceOver, then provide a
        // custom label to the parent, like this:
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Your score is 1000")
        
        VStack {
            Text("Value: \(value)")

            Button("Increment") {
                value += 1
            }

            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("No handled")
            }
        }
    }
}

#Preview {
    ContentView()
}
