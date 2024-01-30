//
//  CustomDivider.swift
//  MoonShot
//
//  Created by Pierre-Louis Launay on 27/11/2023.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
