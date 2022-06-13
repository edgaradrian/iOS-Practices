//
//  FullScreenCover_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/06/22.
//

import SwiftUI

struct FullScreenCover_Intro: View {
    
    @State private var showDetailView = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "FullScreenCover", subtitulo: "Introducción", description: "Se usa el modificador fullScreenCover para presentar una vista que llene toda la pantalla.")
            
            Spacer()
            
            Button {
                self.showDetailView = true
            } label: {
                Text("Mostrar detalles")
            }

            Spacer()
        }
        .font(.title)
        .fullScreenCover(isPresented: $showDetailView) {
            FullScreenCoverDetailView()
        }
    }
}

struct FullScreenCover_Intro_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCover_Intro()
    }
}

struct FullScreenCoverDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "macwindow.on.rectangle")
            
            HeaderView(titulo: "FullScreenCover", subtitulo: "Detalle de vista", description: "Solo es para ejemplificar.")
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                Text("Descartar")
            }

            Spacer()
            
        }
        .font(.title)
    }
    
}
