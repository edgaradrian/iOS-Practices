//
//  GradientBackgroundStyle.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Ruiz on 04/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct GradientBackgroundStyle: ButtonStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth:0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
    
    
}//GradientBackgroundStyle
