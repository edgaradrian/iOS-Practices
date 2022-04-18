//
//  CircularShapesWithButtons.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct CircularShapesWithButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            HeaderView(titulo: "Formas Circulares", subtitulo: "Usando con botones", description: "Se pueden aplicar formas circulares utilizando el modificador de background")
            
            Button(action: {}) {
                Text("Usar la forma de capsula")
                    .bold()
                    .padding()
            }
            .background(.blue, in: Capsule().stroke())
            .tint(.blue)
            
            Button(action: {}) {
                Text("Usando la forma de capsula")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
            }
            .background(Capsule().fill(.blue))
            .tint(.blue)
            
            Text("Círculo y botón en combinación:")
            Button(action: {}) {
                Image(systemName: "circle.grid.hex.fill")
                    .font(.largeTitle)
                    .padding()
            }
            .background(.blue, in: Circle())
            .tint(.white)
        }
    }
}

struct CircularShapesWithButtons_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapesWithButtons()
    }
}
