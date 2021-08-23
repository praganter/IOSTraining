//
//  ContentView.swift
//  WeSplit
//
//  Created by Batuhan Yetgin on 22.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    let tips = [10, 15, 20, 25, 0]
    
    var calculated : Double  {
        let peopleCount : Double = Double(numberOfPeople + 2)
        let tipNumber : Double = Double(tips[tipPercentage])
        let money : Double = Double(checkAmount) ?? 0
        return (money + (money / 100 * tipNumber)) / peopleCount
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Amount", text : $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of People", selection : $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0) People")
                        }
                    }
                }
                Section(header : Text("How much tip will you give ")){
                    Picker("Tip percentage", selection : $tipPercentage){
                        ForEach(0..<tips.count){
                            Text("\(tips[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("$\(calculated)")
                }
            }.navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
