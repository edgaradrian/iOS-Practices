//
//  Label_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_Colors: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Colors", subtitulo: "ForegroundColor", description: "Usar foregroundColor para cambiar el icono y el texto")
            
            Label("Ajustes de cámara", systemImage: "camera.badge.ellipsis")
                .foregroundColor(.blue)
            
            DescView(description: "Dividir el texto y el icono para así dar formato de diferente forma", backColor: .blue)
            
            Label {
                Text("Ajustes de cámara")
                    .foregroundColor(.cyan)
            } icon: {
                Image(systemName: "camera.badge.ellipsis")
                    .foregroundColor(.red)
            }
            
            
        }
        .font(.title)
    }
}

struct Label_Colors_Previews: PreviewProvider {
    static var previews: some View {
        Label_Colors()
    }
}
