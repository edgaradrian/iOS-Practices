//
//  CheckBoxStyle.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 08/09/22.
//

import SwiftUI

struct CheckBoxStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .cyan : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            
            
            configuration.label
                
        }
    }//makeBody
    
}//CheckBoxStyle


