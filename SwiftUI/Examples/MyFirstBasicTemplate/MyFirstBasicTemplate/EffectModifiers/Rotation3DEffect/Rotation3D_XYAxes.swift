//
//  Rotation3D_XYAxes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Rotation3D_XYAxes: View {
    
    @State private var degrees = -15.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Efecto de Rotación en 3D", subtitulo: "Ejes X y Y", description: "Combinar los ejes X y Y para crear un vector para rotar.")
                
                Text("Eje: (x: 1, y: -2, z: 0.0)")
                Text("Se crea este vector ")
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Mover el deslizador para ajustar la rotación")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                    axis: (x: 1.0, y: -2.0, z: 0.0))
                
                Slider(value: $degrees, in: -180...180, step: 1)
                    .padding()
            }
        }
    }
}

struct Rotation3D_XYAxes_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3D_XYAxes()
    }
}
