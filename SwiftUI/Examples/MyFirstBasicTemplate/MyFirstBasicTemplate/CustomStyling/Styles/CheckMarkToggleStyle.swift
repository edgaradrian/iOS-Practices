//
//  CheckMarkToggleStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct CheckMarkToggleStyle: ToggleStyle {
    var label = ""
    var color = Color.clear
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Text(label)
            
            Spacer()
            
            Button(action: {
                configuration.isOn.toggle()
            }) {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square.fill")
                    .foregroundColor(color)
            }
        }
        .font(.title)
        .padding(.horizontal)
    }//makeBody
    
}//CheckMarkToggleStyle
