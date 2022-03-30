//
//  Text_CustomFonts.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_CustomFonts: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Fuentes Personalizadas", description: "Usar una fuente que ya existe en el sistema. Si el nombre de la fuente no existe, traerá la fuente predeterminada.")
            
            Text("Esta fuente no existe")
                .font(Font.custom("Esta fuente no existe", size: 26))
            
            DescView(description: "Fuentes que sí existen: ", backColor: .blue)
            
            Text("Avenir Next")
                .font(.custom("Avenir Next", size: 26))
            
            Text("Gill Sans")
                .font(.custom("Gill Sans", size: 26))
            
            Text("Helvetica Neue")
                .font(.custom("Helvetica Neue", size: 26))
            
            DescView(description: "Ajustando su peso: ", backColor: .blue)
            
            Text("Avenir Next Regular")
                .font(.custom("Avenir Next Bold", size: 26))
            
            Text("O utilizando el modificador")
                .foregroundColor(.green)
            
            Text("Avenir Next Bold Weight")
                .font(.custom("Avenir Next", size: 26).weight(.bold))
            
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Text_CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        Text_CustomFonts()
    }
}
