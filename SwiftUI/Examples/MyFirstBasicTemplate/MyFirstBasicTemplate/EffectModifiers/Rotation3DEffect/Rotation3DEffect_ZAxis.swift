//
//  Rotation3DEffect_ZAxis.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Rotation3DEffect_ZAxis: View {
    
    @State private var degrees = -15.0
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Efecto Rotación 3D", subtitulo: "Eje Z", description: "Ejemplo de rotación en el eje Z.")
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("45º atrás del Eje Z")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: 15),
                                    axis: (x: 0.0, y: 0.0, z: 1.0))
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("-45º atrás del Eje Z")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: -15),
                                    axis: (x: 0.0, y: 0.0, z: 1.0))
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Mover el deslizador para ajustar la rotación")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                    axis: (x: 0.0, y: 0.0, z: 1.0))
                
                Slider(value: $degrees, in: -180...180, step: 1)
                    .padding()
            }
        }
        
    }
}

struct Rotation3DEffect_ZAxis_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DEffect_ZAxis()
    }
}
