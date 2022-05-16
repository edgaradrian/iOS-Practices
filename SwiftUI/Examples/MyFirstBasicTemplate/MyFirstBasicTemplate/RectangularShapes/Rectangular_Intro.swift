//
//  Rectangular_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/05/22.
//

import SwiftUI

struct Rectangular_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Formas Rectangulares", subtitulo: "Introducción", description: "Hay dos formas rectangulares disponibles en SwiftUI")
            
            Text("Rectangulo")
            
            Rectangle()
                .padding()
            
            Text("Rectangulo Redondeado")
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
            
            Text("Notar que los colores por defecto son negros.")
                .font(.body)
                .padding()
            
        }
        .font(.title)
    }
}

struct Rectangular_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_Intro()
    }
}
