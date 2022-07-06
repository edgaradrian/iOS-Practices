//
//  LuminanceToAlpha_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/07/22.
//

import SwiftUI

struct LuminanceToAlpha_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Luminosidad en Alfa", subtitulo: "Introducción", description: "Las partes obscuras de una imagen, las convierte en una área transparente")
            
            HStack {
                
                Spacer()
                Text("Imagen Original")
                Spacer()
                Text("Imagen Invertida")
                Spacer()
                
            }
            
            HStack {
                
                Image("packers")
                    .resizable()
                    .frame(width: 200, height: 180)
                
                Image("packers")
                    .resizable()
                    .frame(width: 200, height: 180)
                    .luminanceToAlpha()
                
            }
            
        }
    }
}

struct LuminanceToAlpha_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LuminanceToAlpha_Intro()
    }
}
