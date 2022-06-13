//
//  Frame_ControlShapes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/06/22.
//

import SwiftUI

struct Frame_ControlShapes: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Marco", subtitulo: "Controles y figuras", description: "En algunos casos el modificador hace que la vista se estire y en otros que se contraiga")
            
            Text("Ejemplos de vista donde se contrae. Como en las figuras.")
            HStack {
                Capsule()
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 100)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 75)
            }
            
            Text("Ejemplos donde se expande. Como en los botones.")
            Button(action: {}) {
                Text("Botón")
            }
            .frame(width: 200, height: 100)
            .border(Color.blue)
            
        }
    }
}

struct Frame_ControlShapes_Previews: PreviewProvider {
    static var previews: some View {
        Frame_ControlShapes()
    }
}
