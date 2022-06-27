//
//  BlendMode_Setup.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/06/22.
//

import SwiftUI

struct BlendMode_Setup: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Modo Mezcla", subtitulo: "Poniendo el código", description: "Código que sirve para la demostración con dos vistas reutilizables.")
            
            CyanRectangle()
            PinkRectangle()
            
        }
    }
}//BlendMode_Setup

struct BlendMode_Setup_Previews: PreviewProvider {
    static var previews: some View {
        BlendMode_Setup()
    }
}

struct CyanRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.cyan)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
            .overlay(
                Text("Capa trasera")
                    .foregroundColor(.white)
            )
    }
}//CyanRectangle

struct PinkRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.pink)
            .opacity(0.5)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
    }
}
