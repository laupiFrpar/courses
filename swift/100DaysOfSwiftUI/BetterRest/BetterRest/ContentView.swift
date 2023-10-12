//
//  ContentView.swift
//  BetterRest
//
//  Created by Pierre-Louis Launay on 12/10/2023.
//

import CoreML
import SwiftUI


struct ContentView: View {
    // Entering numbers with Stepper
    // https://www.hackingwithswift.com/books/ios-swiftui/entering-numbers-with-stepper
//    @State private var sleepAmount = 8.0
    
//    var body: some View {
//        VStack {
////            Stepper("\(sleepAmount) hours", value: $sleepAmount)
////            Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
////            Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12, step: 0.25)
//            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
//        }
//        .padding()
//    }
    
    // Selecting dates and times with DatePicker
    // https://www.hackingwithswift.com/books/ios-swiftui/selecting-dates-and-times-with-datepicker
//    @State private var wakeUp = Date.now
//    
//    var body: some View {
////        DatePicker("Please enter a date", selection: $wakeUp)
////            .labelsHidden()
//        DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
//    }
    
    // Working with dates
    // https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
//    var body: some View {
//        Text(Date.now, format: .dateTime.hour().minute())
//        Text(Date.now, format: .dateTime.day().month().year())
//        Text(Date.now.formatted(date: .long, time: .shortened))
//    }
    
    // Building a basic layout
    // https://www.hackingwithswift.com/books/ios-swiftui/building-a-basic-layout
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            Form {
                VStack(alignment: .leading, spacing: 0) {
                    Text("When do you want to wake up ?")
                        .font(.headline)
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculatedBedtime)
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
        }
    }
    
    func calculatedBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            
            alertTitle = "Your ideal bedtime is..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }
        
        showingAlert = true
    }
}

#Preview {
    ContentView()
}
