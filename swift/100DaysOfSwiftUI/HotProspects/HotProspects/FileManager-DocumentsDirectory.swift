//
//  FileManager-DocumentsDirectory.swift
//  HotProspects
//
//  Created by Pierre-Louis Launay on 27/01/2024.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        return paths[0]
    }
}
