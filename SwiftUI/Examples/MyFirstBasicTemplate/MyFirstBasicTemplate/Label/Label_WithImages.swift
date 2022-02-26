//
//  Label_WithImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_WithImages: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Label", subtitulo: "Con imágenes", description: "En lugar de SF Symbols, puedes usar imágenes")
            
            Spacer()
            
            Label("Packers", image: "packers")
                .border(Color.cyan, width: 3)
            
            Spacer()
            
            DescView(description: "Es importante saber que la etiqueta (LABEL) no ajustará el tamaño de la imagen. Se tienen que modificar el tamaño de las imágenes antes de ser usadas en la etiqueta (Label)", backColor: .cyan)
            
        }
        .font(.title)
    }
}

struct Label_WithImages_Previews: PreviewProvider {
    static var previews: some View {
        Label_WithImages()
    }
}
