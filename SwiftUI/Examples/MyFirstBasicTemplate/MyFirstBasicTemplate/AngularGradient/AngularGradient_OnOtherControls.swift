//
//  AngularGradient_OnOtherControls.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/05/22.
//

import SwiftUI

struct AngularGradient_OnOtherControls: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado Angular", subtitulo: "En otras vistas", description: "Degradado Angular aplicado en otras vistas de control")
            
            Button(action: {}) {
                Text("Degradado en el fondo")
                    .foregroundColor(.white)
                    .padding()
            }
            .padding(.horizontal)
            .background(
                Capsule().fill(angularGradient)
            )
            
            Button(action: {}) {
                Text("Degradado en el borde")
                    .padding()
                    .background(
                        Capsule().stroke(angularGradient, lineWidth:  3)
                    )
            }
            
        }
        .font(.title)
    }
}

struct AngularGradient_OnOtherControls_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient_OnOtherControls()
    }
}
