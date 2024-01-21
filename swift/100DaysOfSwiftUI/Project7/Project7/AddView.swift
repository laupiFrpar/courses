//
//  AddView.swift
//  Project7
//
//  Created by Pierre-Louis Launay on 17/11/2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State private var name = "New Expense"
    @State private var type = "Personal"
    @State private var amount = 0
    
    static let types = ["Business", "Personal"]
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            
            Picker("Type", selection: $type) {
                ForEach(Self.types, id: \.self) {
                    Text($0)
                }
            }
            
            TextField("Amount", value: $amount, format: .currency(code: "EUR"))
                .keyboardType(.decimalPad)
        }
        .navigationTitle($name)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    modelContext.insert(item)
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel", role: .cancel) {
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddView()
        .modelContainer(for: ExpenseItem.self)
}
