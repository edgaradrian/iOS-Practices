//
//  ColoredToggleStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct ColoredToggleStyle: ToggleStyle {
    var label = ""
    var onColor = Color.cyan
    var offColor = Color.gray
    var thumbColor = Color.white
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Text(label)
            Spacer()
            Button(action: {
                configuration.isOn.toggle()
            }) {
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(configuration.isOn ? onColor : offColor)
                    .frame(width: 50, height: 29)
                    .overlay(
                        Circle()
                            .fill(thumbColor)
                            .shadow(radius: 1, x: 0, y: 1)
                            .padding(1.5)
                            .offset(x: configuration.isOn ? 10 : -10)
                    )
                    .animation(Animation.easeOut(duration: 0.1))
            }
            
        }
        .font(.title)
        .padding(.horizontal)
    }//makeBody
    
}//ColoredToggleStyle
