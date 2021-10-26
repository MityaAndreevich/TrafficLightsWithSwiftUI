//
//  ContentView.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Dmitry Logachev on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightsView(color: .red)
                TrafficLightsView(color: .yellow)
                TrafficLightsView(color: .green)
                Spacer()
                Button("Go") {
                    
                }
            }
            .padding()
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
