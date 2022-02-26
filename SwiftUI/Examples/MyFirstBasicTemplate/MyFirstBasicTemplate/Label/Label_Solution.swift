//
//  Label_Solution.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_Solution: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Label", subtitulo: "Solución", description: "La etiqueta (Label) puede ayudar con el alineado de imágenes y texto de una fila tras fila de un lista.")
            
            List {
                Label("Editar", systemImage: "rectangle.and.pencil.and.ellipsis")
                Label("Archivos", systemImage: "archivebox.circle")
                Label("Documentos", systemImage: "doc.richtext")
                Label("Ajustes de cámara", systemImage: "camera.badge.ellipsis")
            }
            .padding(.horizontal)
            
            DescView(description: "El texto continuará ser alineado, incluso si el texto cambia con ajuste de accesibilidad", backColor: .cyan)
            
        }
        .font(.title)
    }
}

struct Label_Solution_Previews: PreviewProvider {
    static var previews: some View {
        Label_Solution()
    }
}
