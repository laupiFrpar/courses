//
//  Astronaut.swift
//  MoonShot
//
//  Created by Pierre-Louis Launay on 27/11/2023.
//

import Foundation

struct Astronaut: Codable, Hashable, Identifiable {
    let id: String
    let name: String
    let description: String
}
