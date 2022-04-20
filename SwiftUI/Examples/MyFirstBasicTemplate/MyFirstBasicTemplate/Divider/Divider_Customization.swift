//
//  Divider_Customization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Divider_Customization: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Divider", subtitulo: "Personalización", description: "Se puede cambiar los colores de los divisores usando el modificador de background")
            
            Text("Rojo")
            Divider()
                .background(Color.red)
            Text("Blue")
            Divider()
                .background(Color.blue)
            
            Text("Puedes cambiar el color del tamaño de un divisor.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(
                    Color.blue
                )
                
            HStack {
                Divider()
                    .frame(height: 40)
                Text("Cuando es vertical, se puede cambiar la altura")
                Divider()
                    .frame(height: 40)
            }
            
            Group {
                Divider()
                    .frame(width: 300)
                Text("Cuando es horizontal, se puede cambiar la anchura")
                Divider()
                    .frame(width: 300)
            }
            
        }
        .font(.title)
    }
}

struct Divider_Customization_Previews: PreviewProvider {
    static var previews: some View {
        Divider_Customization()
    }
}
