//
//  VerticalLabelStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct VerticalLabelStyle: LabelStyle {
    
    var topColor = Color.clear
    var bottomColor = Color.clear
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: -20) {
            configuration.icon
                .padding()
            configuration.title
                .padding()
        }
        .background(
            VStack(spacing: -35) {
                Circle()
                    .fill(topColor)
                RoundedRectangle(cornerRadius: 10)
                    .fill(bottomColor)
            }
        )
    }
    
}//VerticalLabelStyle
