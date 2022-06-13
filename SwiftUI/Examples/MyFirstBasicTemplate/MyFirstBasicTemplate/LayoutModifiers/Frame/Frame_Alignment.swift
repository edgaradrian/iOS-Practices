//
//  Frame_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/06/22.
//

import SwiftUI

struct Frame_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Marco", subtitulo: "Alineado", description: "El modificador frame permite alinear el contenido dentro de un marco (si es que hay espacio).")
            
            HStack {
                Button(action: {}) {
                    Text("Botón")
                }
                .frame(width: 150, height: 150, alignment: .top)
                .border(Color.blue)
                
                Button(action: {}) {
                    Text("Botón")
                }
                .frame(width: 150, height: 150, alignment: .trailing)
                .border(Color.blue)
                
            }
            
            HStack {
                Button(action: {}) {
                    Text("Botón")
                }
                .frame(width: 150, height: 150, alignment: .leading)
                .border(Color.blue)
                
                Button(action: {}) {
                    Text("Botón")
                }
                .frame(width: 150, height: 150, alignment: .bottom)
                .border(Color.blue)
                
            }
            
        }
    }
}

struct Frame_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Alignment()
    }
}
