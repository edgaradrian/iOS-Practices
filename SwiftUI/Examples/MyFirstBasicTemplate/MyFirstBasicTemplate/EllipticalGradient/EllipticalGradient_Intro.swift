//
//  EllipticalGradient_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/05/22.
//

import SwiftUI

struct EllipticalGradient_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado Elíptico", subtitulo: "Introducción", description: "El degradado elíptico es más parecido al degradado de radio pero automáticamente ajusta su tamaño al contenedor.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(twoColorsGradient, center: .center))
                .overlay(
                    Text("Degradado Elíptico")
                        .foregroundColor(.white), alignment: .top
                )
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.radialGradient(twoColorsGradient, center: .center, startRadius: 10, endRadius: 200))
                .overlay(
                    Text("Degradado Radial")
                        .foregroundColor(.white), alignment: .top
                )
            
        }
        .font(.title)
    }
}

struct EllipticalGradient_Intro_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_Intro()
    }
}

let twoColorsGradient = Gradient(colors: [.yellow, .blue])
