//
//  CircularShapes_SizeModifier.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct CircularShapes_SizeModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Formas Circulares", subtitulo: "Modificador de Tamaño", description: "Se puede utilizar el modificador de tamaño de una figura para definir latura y anchura")
            
            Group {
                Text(".size(width: 90, height: 90)")
                Circle()
                    .size(width: 90, height: 90)
                    .background(Color.blue)
            }
            .padding()
        }
        .font(.title)
    }
}

struct CircularShapes_SizeModifier_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_SizeModifier()
    }
}
