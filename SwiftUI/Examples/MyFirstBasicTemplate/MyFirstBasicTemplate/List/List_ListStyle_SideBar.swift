//
//  List_ListStyle_SideBar.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_ListStyle_SideBar: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "List Style: Sidebar", description: "Usando el estilo sidebar de la lista, se removerán las líneas del separador de la lista.")
            
            List {
                Text("¿Qué te gustaría aprender?")
                    .font(.title2)
                    .fontWeight(.bold)

                Label("Aprender Unity", systemImage: "cube.transparent")
                Label("Aprender Theremin", systemImage: "music.note")
                Label("Aprender Compose", systemImage: "teletype.answer")
                Label("Aprender fotografía", systemImage: "camera.aperture")
                
            }
            .listStyle(.sidebar)
            .accentColor(.cyan)
            
        }
        .font(.title)
    }
}

struct List_ListStyle_SideBar_Previews: PreviewProvider {
    static var previews: some View {
        List_ListStyle_SideBar()
    }
}
