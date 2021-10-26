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
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightsView(color: .red, opacity: lightsOff)
                TrafficLightsView(color: .yellow, opacity: lightsOff)
                TrafficLightsView(color: .green, opacity: lightsOff)
                Spacer()
                Button(action: {
                    buttonText = "Next"
                    
                }, label: {
                    Text("\(buttonText)")
                        .font(.title)
                }
                )
                    .padding()
            }
        }
    }
    
    private let lightsOn: CGFloat = 1.0
    private let lightsOff: CGFloat = 0.3
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
