//
//  CircularShapes_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct CircularShapes_Intro: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Formar Circulares", subtitulo: "Introducción", description: "Existen tres formas circulares en SwiftUI:")
                .layoutPriority(1)
            
            Text("Círculo")
            
            Circle()
                .padding()
            
            Text("Capsula")
            
            Capsule()
                .padding()
            
            Text("Elipse")
            
            Ellipse()
                .padding()
            
            Text("Notar que los colores predeterminados son el color primario.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            
        }
        .font(.title)
    }
}

struct CircularShapes_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_Intro()
    }
}
