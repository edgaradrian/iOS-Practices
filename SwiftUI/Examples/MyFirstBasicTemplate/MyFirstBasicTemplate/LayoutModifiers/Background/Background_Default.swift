//
//  Background_Default.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_Default: View {
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Fondo", subtitulo: "Por defecto (iOS 15)", description: "Si se agrega un modificador background para cualquier vista, se utilizará el mismo color de fondo por defecto.")
                
                Text("El fondo es del color del sistema por defecto")
                    .padding()
                    .background()
                
            }
            .font(.title)
            
        }
    }
}

struct Background_Default_Previews: PreviewProvider {
    static var previews: some View {
        Background_Default()
    }
}
