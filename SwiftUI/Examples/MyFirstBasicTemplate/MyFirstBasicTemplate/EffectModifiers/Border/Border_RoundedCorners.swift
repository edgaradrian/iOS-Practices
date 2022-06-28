//
//  Border_RoundedCorners.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/06/22.
//

import SwiftUI

struct Border_RoundedCorners: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Borde", subtitulo: "Border redondeados", description: "Notar que sucede cuando se aplica el redondeado a un borde")
            
            Button(action: {}) {
                Text("Botón esquina redondeadas")
            }
            .padding()
            .border(Color.blue, width: 3)
            .cornerRadius(15)
            
            DescView(description: "Si se desea un borde con esquinas redondeadas entonces hay que usar un RoundedRectangle", backColor: .blue)
            
            Button(action: {}) {
                Text("Botón con Rectángulo redondeado")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.blue, lineWidth: 5)
            )
            
            Button(action: {}) {
                Text("Botón con Capsula")
            }
            .padding()
            .background(
                Capsule()
                    .stroke(Color.blue, lineWidth: 5)
            )
            
        }
    }
}

struct Border_RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        Border_RoundedCorners()
    }
}
