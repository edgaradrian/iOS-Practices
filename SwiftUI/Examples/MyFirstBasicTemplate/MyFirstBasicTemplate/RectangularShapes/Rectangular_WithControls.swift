//
//  Rectangular_WithControls.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct Rectangular_WithControls: View {
    @State private var textfield = "Rectangulo Redondeado con campo de texto"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Formas Rectangulares", subtitulo: "Usando con controles", description: "Se pueden aplicar figuras rectangulares a otras vistas usando el modificador .background")
            
            Button(action: {}) {
                Text("Rectangulo Redondeado y Botón")
                    .bold()
                    .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.blue, lineWidth: 1)
            )
            .tint(.blue)
            
            
            Button(action: {}) {
                Text("Rectangulo Redondeado y botón")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
            )
            
            TextField("Este es un marcador", text: $textfield)
                .foregroundColor(.white)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                )
                .padding()
            
        }
    }
}

struct Rectangular_WithControls_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_WithControls()
    }
}
