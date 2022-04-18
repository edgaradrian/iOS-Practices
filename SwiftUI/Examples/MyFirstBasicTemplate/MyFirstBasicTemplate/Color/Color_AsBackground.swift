//
//  Color_AsBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct Color_AsBackground: View {
    var body: some View {
        ZStack {
            
            Color("ColorFondo")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Color", subtitulo: "Usando un fondo", description: "Con un ZStack, se puede poner una vista Color como el color de fondo")
                
                Text("(Fondo en modo obscuro)")
                    .padding(.top, 150)
            }
            
            
        }
        .font(.title)
    }
}

struct Color_AsBackground_Previews: PreviewProvider {
    static var previews: some View {
        Color_AsBackground()
    }
}
