//
//  Background_Content.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_Content: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            HeaderView(titulo: "Fondo", subtitulo: "Área Segura", description: "Se puede tener el fondo ignorando el area segura.")
            
            Spacer()
            
        }
        .font(.title)
        .background(
            Color.yellow
                .opacity(0.3)
        )
    }
}

struct Background_Content_Previews: PreviewProvider {
    static var previews: some View {
        Background_Content()
    }
}
