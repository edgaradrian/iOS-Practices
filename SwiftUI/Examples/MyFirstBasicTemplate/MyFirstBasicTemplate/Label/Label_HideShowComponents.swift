//
//  Label_HideShowComponents.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_HideShowComponents: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Colors", subtitulo: "Hide/Show Components", description: "Se puede ocultar o mostrar el ícono o el texto usando labelStyle")
            
            VStack(alignment: .leading, spacing: 20) {
                Label("Automatic", systemImage: "camera.badge.ellipsis")
                    .labelStyle(.automatic)
                
                Label("Icon Only", systemImage: "camera.badge.ellipsis")
                    .labelStyle(.iconOnly)
                
                Label("Title Only", systemImage: "camera.badge.ellipsis")
                    .labelStyle(.titleOnly)
                
                Label("Title & Icon", systemImage: "camera.badge.ellipsis")
                    .labelStyle(.titleAndIcon)
                
            }
            
        }
        .font(.title)
    }
}

struct Label_HideShowComponents_Previews: PreviewProvider {
    static var previews: some View {
        Label_HideShowComponents()
    }
}
