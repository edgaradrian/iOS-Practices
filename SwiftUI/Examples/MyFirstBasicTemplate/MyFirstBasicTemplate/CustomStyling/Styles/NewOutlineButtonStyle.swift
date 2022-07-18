//
//  NewOutlineButtonStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct NewOutlineButtonStyle: ButtonStyle {
    
    var buttonColor = Color.blue
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .padding()
            .foregroundColor(buttonColor)
            .opacity(configuration.isPressed ? 0.2 : 1)
            .background(
                Capsule()
                    .strokeBorder(buttonColor, lineWidth: 2)
            )
        
    }//makeBody
    
}//NewOutlineButtonStyle
