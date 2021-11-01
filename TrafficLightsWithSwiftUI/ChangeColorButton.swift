//
//  ChangeColorButton.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Dmitry Logachev on 01.11.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    let buttonText: String
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(buttonText)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 180, height: 60)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
        
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(buttonText: "Go", action: {})
    }
}
