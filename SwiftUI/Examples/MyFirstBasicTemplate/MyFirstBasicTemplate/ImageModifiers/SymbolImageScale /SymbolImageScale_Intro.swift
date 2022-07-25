//
//  SymbolImageScale_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 25/07/22.
//

import SwiftUI

struct SymbolImageScale_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Escalar Imagen de Simbolo", subtitulo: "Introducción", description: "imageScale permite modificar las imágenes de simbolo de tres formas.")
                
                Group {
                    Text("Escala de Imagen: Pequeña")
                    Image(systemName: "bolt.fill")
                        .imageScale(.small)
                    
                    Text("Escala de Imagen: Mediana")
                    Image(systemName: "bolt.fill")
                        .imageScale(.medium)
                    
                    Text("Escala de Imagen: Larga")
                    Image(systemName: "bolt.fill")
                        .imageScale(.large)
                    
                }
                .font(.title)
            }
        }
    }
}

struct SymbolImageScale_Intro_Previews: PreviewProvider {
    static var previews: some View {
        SymbolImageScale_Intro()
    }
}
