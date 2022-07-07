//
//  RotationEffect_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/07/22.
//

import SwiftUI

struct RotationEffect_Intro: View {
    
    @State private var degrees = -25.0
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de Rotación", subtitulo: "Introducción", description: "Usar el efecto de rotación en vistas alrededor de su punto de origen.")
            
            HStack {
                Text("-90º")
                    .rotationEffect(Angle(degrees: -90))
                
                Text("-45º")
                    .rotationEffect(Angle(degrees: -45))
                
                Text("0º")
                    .rotationEffect(Angle(degrees: 0))
                
                Text("45º")
                    .rotationEffect(Angle(degrees: 45))
                
                Text("90º")
                    .rotationEffect(Angle(degrees: 90))
            }
            .font(.largeTitle)
            .padding()
            
            Divider().background(Color.blue)
            
            Text("Las rotaciones son divertidas")
                .font(.title)
                .rotationEffect(Angle(degrees: degrees))
                .border(Color.blue)
                .padding(.vertical, 60)
            
            Slider(value: $degrees, in: -180...180, step: 1)
                .padding()
            
            DescView(description: "Notar que el contenido es el que rota, no así el marco", backColor: .blue)
            
        }
    }
}

struct RotationEffect_Intro_Previews: PreviewProvider {
    static var previews: some View {
        RotationEffect_Intro()
    }
}
