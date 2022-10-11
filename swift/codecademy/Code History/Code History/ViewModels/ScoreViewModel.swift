//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Pierre-Louis Launay on 27/09/2022.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
