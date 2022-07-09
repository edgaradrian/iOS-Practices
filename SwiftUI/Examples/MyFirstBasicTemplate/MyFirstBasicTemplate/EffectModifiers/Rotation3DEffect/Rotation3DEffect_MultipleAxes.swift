//
//  Rotation3DEffect_MultipleAxes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Rotation3DEffect_MultipleAxes: View {
    
    @State private var degrees = -15.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Efecto de Rotación en 3D", subtitulo: "Ejes X,Y y Z", description: "Combinar los ejes X,Y y Z para crear un vector para rotar.")
                
                Text("Eje: (x: 2, y: -2, z: 4.0)")
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
                                    axis: (x: 2.0, y: -2.0, z: 4.0))
                
                Slider(value: $degrees, in: -180...180, step: 1)
                    .padding()
            }
        }
    }
}

struct Rotation3DEffect_MultipleAxes_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DEffect_MultipleAxes()
    }
}
