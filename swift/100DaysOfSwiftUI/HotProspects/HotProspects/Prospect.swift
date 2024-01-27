//
//  Prospect.swift
//  HotProspects
//
//  Created by Pierre-Louis Launay on 27/01/2024.
//

import Foundation

class Prospect: Identifiable, Codable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    fileprivate(set) var isContacted = false
}

@MainActor class Prospects: ObservableObject {
    @Published private(set) var people: [Prospect]
    
    let saveKey = "SavedData"
    let savePath = FileManager.documentsDirectory.appendingPathComponent("SavedData")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Prospect].self, from: data) {
                people = decoded
                return
            }
        }
        
        people = []
    }
    
    func toggle(_ prospect: Prospect) {
        objectWillChange.send()
        prospect.isContacted.toggle()
        save()
    }
    
    private func save() {
        if let encoded = try? JSONEncoder().encode(people) {
            try? encoded.write(to: savePath, options: [.atomic, .completeFileProtection])
        }
    }
    
    func add(_ prospect: Prospect) {
        people.append(prospect)
        save()
    }
}
