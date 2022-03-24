//
//  Text_LineLimit.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_LineLimit: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Line Limit", description: "La vista Text muestra un texto de sólo lectura que puede ser modificado de muchas maneras. Si se desea limitar el texto se utiliza el modificador .lineLimit")
            
            Text("Aquí un pequeño ejemplo de usar el modificador de una sola línea.")
                .lineLimit(1)
                .font(.title)
                .padding(.horizontal)
        }
    }
}

struct Text_LineLimit_Previews: PreviewProvider {
    static var previews: some View {
        Text_LineLimit()
    }
}
