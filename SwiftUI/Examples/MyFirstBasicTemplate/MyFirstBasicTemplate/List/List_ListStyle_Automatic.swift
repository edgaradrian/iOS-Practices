//
//  List_ListStyle_Automatic.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_ListStyle_Automatic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "List Style Automatic", description: "Se pueden aplicar estilos diferentes a las listas. Aquí se muestra el estilo automático.")
            
            List {
                Text("¿Qué te gustaría aprender?")
                    .font(.title2)
                    .fontWeight(.bold)
                Label("Aprender Unity", systemImage: "cube.transparent")
                Label("Aprender Theremin", systemImage: "music.note")
                Label("Aprender Compose", systemImage: "teletype.answer")
                Label("Aprender fotografía", systemImage: "camera.aperture")
            }
            .accentColor(.green)
            .listStyle(.automatic)
            
        }
        .font(.title)
    }
}

struct List_ListStyle_Automatic_Previews: PreviewProvider {
    static var previews: some View {
        List_ListStyle_Automatic()
    }
}
