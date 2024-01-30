//
//  ContentView.swift
//  Challenge1
//
//  Created by Pierre-Louis Launay on 16/09/2023.
//

import SwiftUI

struct ContentView: View {
    let conversions = ["Temperature", "Distance", "Time", "Volumes"]
    let unitTypes = [
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin],
        [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles],
        [UnitDuration.seconds, UnitDuration.minutes, UnitDuration.hours],
        [UnitVolume.milliliters, UnitVolume.liters, UnitVolume.cups, UnitVolume.pints, UnitVolume.gallons]
    ]
    let formatter: MeasurementFormatter
    
    @State private var inputUnit: Dimension = UnitTemperature.celsius
    @State private var outputUnit: Dimension = UnitTemperature.fahrenheit
    @State private var input = 0.0
    @State private var selectedUnits = 0
    
    @FocusState private var inputUnitIsFocused: Bool
    
    var result: String {
        let inputMeasurement = Measurement(value: input, unit: inputUnit)
        let outputMeasurement = inputMeasurement.converted(to: outputUnit)
        
        return formatter.string(from: outputMeasurement)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Value to convert", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputUnitIsFocused)
                } header: {
                    Text("Value to convert")
                }
                
                Section {
                    Picker("Conversion", selection: $selectedUnits) {
                        ForEach(0..<conversions.count) {
                            Text(conversions[$0])
                        }
                    }
                    
                    Picker("From", selection: $inputUnit) {
                        ForEach(unitTypes[selectedUnits], id: \.self) {
                            Text(formatter.string(from: $0).capitalized)
                        }
                    }
                    
                    Picker("To", selection: $outputUnit) {
                        ForEach(unitTypes[selectedUnits], id: \.self) {
                            Text(formatter.string(from: $0).capitalized)
                        }
                    }
                } header: {
                    Text("Unit")
                }
                
                Section {
                    Text(result)
                } header: {
                    Text("Result")
                }
            }
            .navigationTitle("Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        inputUnitIsFocused = false
                    }
                }
            }
            .onChange(of: selectedUnits) { newSelection in
                let units = unitTypes[newSelection]
                inputUnit = units[0]
                outputUnit = units[1]
            }
        }
    }
    
    init() {
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
