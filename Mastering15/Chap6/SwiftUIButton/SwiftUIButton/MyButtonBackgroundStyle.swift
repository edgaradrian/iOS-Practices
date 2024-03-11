//
//  MyButtonBackgroundStyle.swift
//  SwiftUIButton
//
//  Created by Edgar Adrián on 11/03/24.
//

import SwiftUI
 
struct MyButtonBackgroundStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(Color.cyan)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }//makeBody
    
}//MyButtonBackgroundStyle
