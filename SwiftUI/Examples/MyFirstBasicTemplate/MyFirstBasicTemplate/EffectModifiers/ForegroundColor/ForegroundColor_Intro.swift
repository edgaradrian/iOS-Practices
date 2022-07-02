//
//  ForegroundColor_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/07/22.
//

import SwiftUI

struct ForegroundColor_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Color Primer Plano", subtitulo: "Introducción", description: "Se usa el modificador de color de primer plano para cambiar el color de textos, imágenes y fíguras.")
            
            Text("Fíguras")
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 150, height: 50)
            
            Text("Controles (Cambian los colores dentro)")
            Button(action: {}) {
                Text("Color de primer plano en botones")
            }
            .padding()
            .foregroundColor(.blue)
            
            Text("Imágenes del Sistema")
            Image(systemName: "eyedropper.full")
                .font(.largeTitle)
                .foregroundColor(.blue)

            Text("Fotos (no hace nada)")
            Image("packers")
                .resizable()
                .frame(width: 120, height: 100, alignment: .center)
            
            
        }
    }
}

struct ForegroundColor_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundColor_Intro()
    }
}
