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
                Button(action: {
                    buttonText = "Next"
                    nextColor()
                }) {
                    Text("\(buttonText)")
                        .font(.title)
                        .frame(width: 180, height: 60)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4))
                    
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
