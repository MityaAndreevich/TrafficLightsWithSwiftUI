//
//  TrafficLightsView.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Dmitry Logachev on 26.10.2021.
//

import SwiftUI

struct TrafficLightsView: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
    }
}

struct RedLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsView(color: .red, opacity: 0.3)
    }
}
