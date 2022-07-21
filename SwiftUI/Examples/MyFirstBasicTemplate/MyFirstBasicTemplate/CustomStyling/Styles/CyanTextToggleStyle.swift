//
//  CyanTextToggleStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct CyanTextToggleStyle: ToggleStyle {
    
    var label = ""
    
    func makeBody(configuration: Configuration) -> some View {
        Toggle(isOn: configuration.$isOn) {
            Text(label)
                .foregroundColor(.cyan)
                .fontWeight(.light)
                .font(.title)
        }
        .padding(.horizontal)
    }

}//CyanTextToggleStyle
