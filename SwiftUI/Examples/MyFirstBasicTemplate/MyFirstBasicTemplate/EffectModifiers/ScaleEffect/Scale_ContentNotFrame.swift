//
//  Scale_ContentNotFrame.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/07/22.
//

import SwiftUI

struct Scale_ContentNotFrame: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Efecto de Escala", subtitulo: "Marcos y contenido", description: "Notar que cuando se escala, lo que aumenta es el contenido no el marco.")
                
                Group {
                    Text("Antes")
                    Text("Escala")
                        .font(.title)
                        .border(Color.red)
                    Text("Después (4X)")
                    Text("Escala (4X)")
                        .font(.title)
                        .scaleEffect(4)
                        .border(Color.red)
                    
                    Divider()
                        .padding(.top)
                    Text("Antes")
                    Image(systemName: "cloud.sun.fill")
                        .border(Color.red)
                    Text("Después (3.2X)")
                    Image(systemName: "cloud.sun.fill")
                        .scaleEffect(3.2)
                        .border(Color.red)
                    
                }
                
            }
        }
    }
}

struct Scale_ContentNotFrame_Previews: PreviewProvider {
    static var previews: some View {
        Scale_ContentNotFrame()
    }
}
