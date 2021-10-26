//
//  TrafficLightsView.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Dmitry Logachev on 26.10.2021.
//

import SwiftUI

struct TrafficLightsView: View {
    var color: Color
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 150, height: 150)
                //.clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}

struct RedLight_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TrafficLightsView(color: .red)
            TrafficLightsView(color: .yellow)
            TrafficLightsView(color: .green)
        }
    }
}
