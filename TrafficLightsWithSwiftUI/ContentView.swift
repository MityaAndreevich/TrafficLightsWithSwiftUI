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
    
    @State var opacityForRed: CGFloat = 0.3
    @State var opacityForYellow: CGFloat = 0.3
    @State var opacityForGreen: CGFloat = 0.3
    
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
                })
                {
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
    
    private let lightsOn: CGFloat = 1.0
    private let lightsOff: CGFloat = 0.3
    private var lights = CurrentLights.red
    
    private func changeLights() {
        switch lights {
        case .red:
            opacityForRed = lightsOn
            opacityForYellow = lightsOff
            opacityForGreen = lightsOff
        case .yellow:
            opacityForRed = lightsOff
            opacityForYellow = lightsOn
            opacityForGreen = lightsOff
        case .green:
            opacityForRed = lightsOff
            opacityForYellow = lightsOff
            opacityForGreen = lightsOn
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
