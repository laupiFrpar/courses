//
//  Card.swift
//  Flashzilla
//
//  Created by Pierre-Louis Launay on 28/01/2024.
//

import Foundation

struct Card: Codable, Identifiable, Hashable {
    var id = UUID()
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor who?", answer: "Jodie Whittaker")
}
