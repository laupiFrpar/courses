//
//  SkiDetailView.swift
//  SnowSeeker
//
//  Created by Pierre-Louis Launay on 30/01/2024.
//

import SwiftUI

struct SkiDetailView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Elevation")
                    .font(.caption.bold())
                Text("\(resort.elevation)")
                    .font(.title3)
            }
            
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SkiDetailView(resort: Resort.example)
}
