//
//  Rotation3DEffect_Anchors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Rotation3DEffect_Anchors: View {
    
    @State private var degrees = -15.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Efecto Rotación 3D", subtitulo: "Anclas", description: "El ancla es el punto desde se ejecuta la rotación. De forma predeteminada está en el centro. Se puede especificar diferente ancla.")
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Ancla de arriba X")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                    axis: (x: 1.0, y: 0.0, z: 0.0),
                                      anchor: .top
                    )
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Ancla al principio Y")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                      axis: (x: 0.0, y: 1.0, z: 0.0),
                                      anchor: .leading)
             
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)
                    .overlay(
                        Text("Ancla arriba al final Z")
                            .font(.largeTitle)
                            .bold()
                    )
                    .rotation3DEffect(Angle(degrees: degrees),
                                      axis: (x: 0.0, y: 0.0, z: 1.0),
                                      anchor: .topTrailing)
                
                Slider(value: $degrees, in: -180...180, step: 1)
                    .padding()
            }
        }
    }
}

struct Rotation3DEffect_Anchors_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DEffect_Anchors()
    }
}
