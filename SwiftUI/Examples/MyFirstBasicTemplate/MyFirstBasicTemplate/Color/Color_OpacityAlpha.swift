//
//  Color_OpacityAlpha.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Color_OpacityAlpha: View {
    var body: some View {
        ZStack {
            
            Color.cyan.opacity(0.25)
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Color", subtitulo: "Opacidad", description: "Se puede ajustar la opacidad de un color.")
                
            }
            
        }
        .ignoresSafeArea(edges: .vertical)
    }
}

struct Color_OpacityAlpha_Previews: PreviewProvider {
    static var previews: some View {
        Color_OpacityAlpha()
    }
}
