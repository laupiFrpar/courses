//
//  ContentView.swift
//  Ligaya
//
//  Created by Pierre-Louis Launay on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Navigation views acts a container for navigable views and content
        NavigationView {
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                // Adding the NavigationLink moves the user to the item screen
                NavigationLink(
                    destination: ItemDetailView(itemName: "Shrimp Chips"),
                    label: {
                        Text("Shrimp Chips")
                    }
                )
                Spacer()
            }
            // Sets a navigation title of "Ligaya's Store"
            .navigationTitle(Text("Ligaya's store"))
            // Sets the styling of the navigation title to inline
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
