//
//  Activity.swift
//  Habito
//
//  Created by Paul Hudson on 07/11/2023.
//

import Foundation

struct Activity: Codable, Equatable, Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var completionCount = 0

    static let example = Activity(title: "Example activity", description: "This is a test activity.")
}
