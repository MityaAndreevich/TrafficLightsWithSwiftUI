//
//  ContentView.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Dmitry Logachev on 25.10.2021.
//

import SwiftUI

enum CurrentLights {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonText = "Go"
    
    @State private var currentLight = CurrentLights.red
    
    private func nextColor() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                TrafficLightsView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                TrafficLightsView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                TrafficLightsView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                Spacer()
                ChangeColorButton(buttonText: buttonText) {
                    if buttonText == "Go" {
                        buttonText = "Next"
                    }
                    nextColor()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
