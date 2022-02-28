//
//  List_HeaderFooter_Sidebar.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_HeaderFooter_Sidebar: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "Sidebar - Cabeceros & Pies de Página", description: "Este estilo de lista cambia la manera de los cabeceros y pies de página son representados.")
            
            List {
                
                Section(header: Text("¿Qué te gustaría aprender?"), footer: Text("Total: 5")) {
                    
                    Label("Aprender Unity", systemImage: "cube.transparent")
                    Label("Aprender Theremin", systemImage: "music.note")
                    Label("Aprender Compose", systemImage: "teletype.answer")
                    Label("Aprender fotografía", systemImage: "camera.aperture")
                    Label("Aprender Machine Learning", systemImage: "iphone.landscape")
                    
                }
                
            }
            .listStyle(.sidebar)
            .accentColor(.cyan)
            
        }
        .font(.title)
    }
}

struct List_HeaderFooter_Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        List_HeaderFooter_Sidebar()
    }
}
