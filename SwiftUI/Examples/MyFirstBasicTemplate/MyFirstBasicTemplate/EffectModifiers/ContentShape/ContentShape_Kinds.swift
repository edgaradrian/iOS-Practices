//
//  ContentShape_Kinds.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/07/22.
//

import SwiftUI

struct ContentShape_Kinds: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Fígura Contenedora", subtitulo: "Tipos de Fíguras contenedoras", description: "Se pueden definir tipos de fíguras contenedoras para interactuar con ellas.")
            
            Image(systemName: "trash.circle")
                .font(.system(size:70))
                .contentShape(.contextMenuPreview, Circle())
                .contextMenu {
                    Button("Menú 1") {}
                    Button("Menú 2") {}
                }
            
            Image(systemName: "trash.square")
                .font(.system(size: 70))
                .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 10))
                .contextMenu {
                    Button("Menú 1") {}
                    Button("Menú 2") {}
                }
            
        }
        .font(.title)
    }
}

struct ContentShape_Kinds_Previews: PreviewProvider {
    static var previews: some View {
        ContentShape_Kinds()
    }
}
