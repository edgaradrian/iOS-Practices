//
//  List_HeaderFooter_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_HeaderFooter_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List Sections", subtitulo: "Cabeceros y Pies de Página", description: "Usa la sección para incluir cabeceros y pies de página en la lista.")
            
            List {
                Section {
                    Label("Aprender Unity", systemImage: "cube.transparent")
                }
                
                Section {
                    Label("Aprender Theremin", systemImage: "music.note")
                } header: {
                    Text("Sólo un cabecero")
                }
                
                Section {
                    Label("Aprender Compose", systemImage: "teletype.answer")
                } header: {
                    Text("Sólo un pie de página")
                }
                
                Section {
                    Label("Aprender fotografía", systemImage: "camera.aperture")
                    Label("Aprender Machine Learning", systemImage: "iphone.landscape")
                } header: {
                    Text("¿Qué te gustaría aprender?")
                } footer: {
                    Text("Total: 2")
                }
                
                
            }
            
        }
        .font(.title)
    }
}

struct List_HeaderFooter_Intro_Previews: PreviewProvider {
    static var previews: some View {
        List_HeaderFooter_Intro()
    }
}
