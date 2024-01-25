//
//  CowsAndBullsApp.swift
//  CowsAndBulls
//
//  Created by Pierre-Louis Launay on 05/01/2024.
//

import SwiftUI

@main
struct CowsAndBullsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        Settings(content: SettingsView.init)
    }
}
