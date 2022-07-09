//
//  Rotation3DEffect_YAxis.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Rotation3DEffect_YAxis: View {
    
    @State private var degrees = -35.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Efecto Rotación 3D", subtitulo: "Eje Y", description: "Ejemplo de rotación en el eje Y.")
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("45º atrás del Eje Y")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: 45),
                                    axis: (x: 0.0, y: 1.0, z: 0.0))
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("-45º atrás del Eje Y")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: -45),
                                    axis: (x: 0.0, y: 1.0, z: 0.0))
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Mover el deslizador para ajustar la rotación")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                    axis: (x: 0.0, y: 1.0, z: 0.0))
                
                Slider(value: $degrees, in: -180...180, step: 1)
                    .padding()
            }
        }
    }
}

struct Rotation3DEffect_YAxis_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DEffect_YAxis()
    }
}
