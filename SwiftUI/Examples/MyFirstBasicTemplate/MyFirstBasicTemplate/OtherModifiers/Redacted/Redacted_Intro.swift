//
//  Redacted_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI

struct Redacted_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Redactado", subtitulo: "Introducción", description: "Usar el modificador de redactado para mostrar vistas de marcador de posición en lugar del actual contenido.")
                
                Text("Texto Redactado Texto Redactado Texto Redactado")
                    .redacted(reason: .placeholder)

                Text("Texto no redactado")
                
                DescView(description: "Las imágenes pueden ser también redactadas", backColor: .blue)

                HStack {
                    Text("Redactado")
                    Image("packers")
                        .redacted(reason: .placeholder)
                }
                
                HStack {
                    Text("Original")
                    Image("packers")
                }
                
                
            }
            .font(.title)
        }
    }
}

struct Redacted_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Redacted_Intro()
    }
}
