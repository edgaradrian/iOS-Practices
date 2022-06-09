//
//  Background_Shapes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_Shapes: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Fondo", subtitulo: "Usando figuras", description: "Usando el modificador background para aplicar figuras en el fondo de las vistas. Las figuras pueden ser Círculo, Capsula, Rectangulo y Rectangulo Redondeado.")
                
                Text("Fondo de figuras en figuras")
                Circle()
                    .frame(width: 132, height: 44)
                    .foregroundColor(.blue)
                    .background(
                        Circle()
                            .foregroundColor(.black)
                            .offset(x: 4, y: 4)
                    )
                
                Text("Fondo de figuras en controles")
                Button(action: {}) {
                    Text("Botón")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .padding()
                .background(
                    Capsule()
                        .foregroundColor(.blue)
                )
                
                Text("Fondo de figuras en vistas")
                HStack() {
                    Text("Esto es un HStack")
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Ellipse()
                        .foregroundColor(.blue)
                )
                
                
            }
            .font(.title)
        }
    }
}

struct Background_Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Background_Shapes()
    }
}
