//
//  Background_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/06/22.
//

import SwiftUI

struct Background_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Fondo", subtitulo: "Colores", description: "El modificador background es usado comunmente para poner colores detrás de los controles. Este texto tiene fondo azul como ejemplo.")
            
            Text("Fondo con colores y formas.")
            Circle()
                .frame(width: 132, height: 44)
                .background(Color.blue)
            
            Text("Fondo con colores en controles")
            Button(action: {}) {
                Text("Botón")
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.blue)
            
            Text("Fondo de colores en vistas")
            HStack() {
                Text("Esta es mi pila de vistas")
            }
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            
        }
        .font(.title)
    }
}

struct Background_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Background_Intro()
    }
}
