//
//  Project7App.swift
//  Project7
//
//  Created by Pierre-Louis Launay on 17/11/2023.
//

import SwiftUI

@main
struct Project7App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
