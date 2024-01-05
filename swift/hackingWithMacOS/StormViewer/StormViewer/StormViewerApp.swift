//
//  StormViewerApp.swift
//  StormViewer
//
//  Created by Pierre-Louis Launay on 05/01/2024.
//

import SwiftUI

@main
struct StormViewerApp: App {
    var body: some Scene {
//        WindowGroup {
        Window("Storm Viewer", id: "main") {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .commands {
            CommandGroup(replacing: .newItem) { }
            CommandGroup(replacing: .undoRedo) { }
            CommandGroup(replacing: .pasteboard) { }
        }
    }
}
