//
//  String-EmptyChecking.swift
//  CupCakeCorner
//
//  Created by Pierre-Louis Launay on 05/01/2024.
//

import SwiftUI

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
