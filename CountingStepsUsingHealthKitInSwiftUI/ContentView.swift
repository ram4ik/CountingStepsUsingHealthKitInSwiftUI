//
//  ContentView.swift
//  CountingStepsUsingHealthKitInSwiftUI
//
//  Created by ramil on 25.08.2020.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    
    private var healthStore: HealthStore?
    
    init() {
        healthStore = HealthStore()
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear() {
                if let healthStore = healthStore {
                    healthStore.requestAuthorization { success in
                        
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
