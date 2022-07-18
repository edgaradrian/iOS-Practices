//
//  OutlineButtonStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct OnlineButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .padding()
            .foregroundColor(.red)
            .opacity(configuration.isPressed ? 0.3 : 1)
            .background(
                Capsule()
                    .strokeBorder(Color.blue, lineWidth: 2)
            )
            
        
    }//makeBody
    
}//OnlineButtonStyle
