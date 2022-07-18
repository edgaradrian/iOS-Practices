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
            .background(
                Capsule()
                    .strokeBorder(Color.blue, lineWidth: 2)
            )
        
    }//makeBody
    
}//OnlineButtonStyle
