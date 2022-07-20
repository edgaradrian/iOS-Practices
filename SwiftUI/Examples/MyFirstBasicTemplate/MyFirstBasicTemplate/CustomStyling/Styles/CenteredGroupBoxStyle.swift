//
//  CenteredGroupBoxStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct CenteredGroupBoxStyle: GroupBoxStyle {
    
    var backColor = Color.clear
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 5) {
            configuration.label
                .font(.body.lowercaseSmallCaps().weight(.bold))
                .foregroundColor(.secondary)
            configuration.content
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            Rectangle()
                .fill(backColor.opacity(0.2))
        )
    }
    
}//CenteredGroupBoxStyle
