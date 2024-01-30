//
//  FriendFaceApp.swift
//  FriendFace
//
//  Created by Pierre-Louis Launay on 21/01/2024.
//

import SwiftData
import SwiftUI

@main
struct FriendFaceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
