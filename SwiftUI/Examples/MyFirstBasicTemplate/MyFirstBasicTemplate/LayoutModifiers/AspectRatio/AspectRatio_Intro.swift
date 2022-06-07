//
//  AspectRatio_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/06/22.
//

import SwiftUI

struct AspectRatio_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Proporción de Aspecto", subtitulo: "Introducción", description: "El modificador aspectRatio sólo toma un valor. Se debe pensar que se está poniendo el valor del ancho en comparación a la altura de la vista.")
            
            Text("Original Image (1:1)")
            Image("aspectratio")
                .resizable()
                .frame(width: 60, height: 60)
            
            Text("Ancho mitad de la altura (1:2)")
            Image("aspectratio")
                .resizable()
                .frame(height: 60)
                .aspectRatio(0.15, contentMode: .fit)
            
            Text("Ancho X2 de altura (2:1)")
            Image("aspectratio")
                .resizable()
                .frame(height: 60)
                .aspectRatio(0.70, contentMode: .fit)
            
        }
        .font(.title)
    }
}

struct AspectRatio_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatio_Intro()
    }
}
