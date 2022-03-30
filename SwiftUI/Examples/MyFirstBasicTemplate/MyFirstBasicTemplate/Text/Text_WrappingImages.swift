//
//  Text_WrappingImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_WrappingImages: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Text", subtitulo: "Envolviendo Imágenes", description: "Se pueden envolver imágenes dentro del texto para concatenar con otro texto")
            
            Text("¡Completo! ") +
            Text(Image(systemName: "checkmark.square.fill")).foregroundColor(.green) +
            Text(" Ahora continua.")
            
            Text(Image(systemName: "trash.circle.fill")).foregroundColor(.red)
            + Text(" ¿Seguro que deseas borrar? ")
        }
        .font(.title)
    }
}

struct Text_WrappingImages_Previews: PreviewProvider {
    static var previews: some View {
        Text_WrappingImages()
    }
}
