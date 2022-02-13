//
//  HStack_TextAlignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/02/22.
//

import SwiftUI

struct HStack_TextAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "HStack", subtitulo: "Text Alignment", description: "HStacks tienen otra opción de alineado para mejorar el posicionado del texto")
            
            HStack(alignment: .bottom) {
                Text("¡Hola")
                Text("Excelente")
                    .font(.largeTitle)
                Text("Desarrollador!")
            }
            .font(.body)
            
            DescView(description: "Notar que el fondo del texto no está muy alineado arriba", backColor: .orange)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Hola")
                Text("Excelente")
                    .font(.largeTitle)
                Text("Desarrollador")
            }
            .font(.body)
            
        }
        .font(.title)
    }
}

struct HStack_TextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        HStack_TextAlignment()
    }
}
