//
//  Friend.swift
//  FriendFace
//
//  Created by Pierre-Louis Launay on 21/01/2024.
//

import Foundation
import SwiftData

struct Friend: Hashable, Identifiable, Codable {
    let id: UUID
    var name: String
}
