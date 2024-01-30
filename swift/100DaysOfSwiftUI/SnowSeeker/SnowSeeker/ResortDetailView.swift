//
//  ResortDetailView.swift
//  SnowSeeker
//
//  Created by Pierre-Louis Launay on 30/01/2024.
//

import SwiftUI

struct ResortDetailView: View {
    let resort: Resort
    
    var size: String {
        switch  resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ResortDetailView(resort: Resort.example)
}
