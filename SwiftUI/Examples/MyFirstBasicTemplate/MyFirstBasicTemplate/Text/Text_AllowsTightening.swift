//
//  Text_AllowsTightening.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_AllowsTightening: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Permitir Apretar", description: "A veces se requiere que un texto se apriete un poco si es demasiado largo.")
            
            Group {
                Text("Con el modificador allowsTightning se puede ajustar el texto")
                    .foregroundColor(.red)
                    .allowsTightening(false)
                    .padding(.horizontal)
                    .lineLimit(1)
                    .font(.caption)
                Text("Con el modificador allowsTightning se puede ajustar el texto.")
                    .foregroundColor(.blue)
                    .allowsTightening(true)
                    .padding(.horizontal)
                    .lineLimit(0)
                    .font(.caption)
            }
            .padding()
        }
    }
}

struct Text_AllowsTightening_Previews: PreviewProvider {
    static var previews: some View {
        Text_AllowsTightening()
    }
}
