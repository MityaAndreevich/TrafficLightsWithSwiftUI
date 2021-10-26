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
    @State var buttonText = "Go"
    
    @State var opacityForRed: Double = 0.3
    @State var opacityForYellow: Double = 0.3
    @State var opacityForGreen: Double = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightsView(color: .red, opacity: opacityForRed)
                TrafficLightsView(color: .yellow, opacity: opacityForYellow)
                TrafficLightsView(color: .green, opacity: opacityForGreen)
                Spacer()
                Button(action: {
                    buttonText = "Next"
                    changeLights()
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
    
    @State private var lights = CurrentLights.red
    private let lightsOn: Double = 1.0
    private let lightsOff: Double = 0.3
    
    private func changeLights() {
        switch lights {
        case .red:
            opacityForRed = lightsOn
            opacityForGreen = lightsOff
            lights = .yellow
        case .yellow:
            opacityForRed = lightsOff
            opacityForYellow = lightsOn
            lights = .green
        case .green:
            opacityForYellow = lightsOff
            opacityForGreen = lightsOn
            lights = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
