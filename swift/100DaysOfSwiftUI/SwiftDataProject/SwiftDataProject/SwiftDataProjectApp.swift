//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Pierre-Louis Launay on 21/01/2024.
//

import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
