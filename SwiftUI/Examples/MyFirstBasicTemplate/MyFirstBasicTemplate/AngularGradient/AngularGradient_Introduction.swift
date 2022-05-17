//
//  AngularGradient_Introduction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct AngularGradient_Introduction: View {

    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado angular", subtitulo: "Introducción", description: "Un degradado angular con círculo en el centro")
            
            Rectangle()
                .fill(angularGradient)

            Text("Ahora con el centro en otro lugar. Aquí se mueve al final.")
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Color.blue
                )
                .font(.title)
            
            Rectangle()
                .fill(nonCenterAngularGradient)
            
        }
    }
    
}

struct AngularGradient_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient_Introduction()
    }
}

let gradient = Gradient(colors: [.blue, .yellow, .orange])
let angularGradient = AngularGradient(gradient: gradient, center: .center, angle: .degrees(0))
let nonCenterAngularGradient = AngularGradient(gradient: gradient, center: .bottomTrailing, angle: .degrees(0))
