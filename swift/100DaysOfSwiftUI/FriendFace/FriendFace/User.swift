//
//  User.swift
//  FriendFace
//
//  Created by Pierre-Louis Launay on 21/01/2024.
//

import Foundation
import SwiftData

struct User: Hashable, Identifiable, Codable {
    let id: UUID
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
    
    static let example = User(id: UUID(), isActive: true, name: "Paul Hudson", age: 35, company: "Hudson Heavy Industries", email: "paul@hackingwithswift.com", address: "555, Taylor Swift Avenue, Nashville, Tennessee", about: "Paul writes about Swift and iOS development.", registered: Date.now, tags: ["swift", "swiftui", "dogs"], friends: [])
}
