//
//  Label_ListItemTint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_ListItemTint: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Label", subtitulo: "List Item Tint", description: "En iOS, puedes aplicar el color del tinte de un artículo a una etiqueta para cambiar sólo la imagen.")
                .layoutPriority(1)
            
            List {
                Label("Editar", systemImage: "rectangle.and.pencil.and.ellipsis")
                    .listItemTint(.red)
                Label("Archivos", systemImage: "archivebox.circle")
                    .listItemTint(.green)
                Label("Documento", systemImage: "doc.richtext")
                    .listItemTint(.cyan)
                Label("Ajuste de cámara", systemImage: "camera.badge.ellipsis")
                    .listItemTint(.orange)
            }
            
            Label("Bullet List", systemImage: "list.bullet.rectangle.fill")
                .listItemTint(.purple)
            
            
        }
        .font(.title)
    }
}

struct Label_ListItemTint_Previews: PreviewProvider {
    static var previews: some View {
        Label_ListItemTint()
    }
}
