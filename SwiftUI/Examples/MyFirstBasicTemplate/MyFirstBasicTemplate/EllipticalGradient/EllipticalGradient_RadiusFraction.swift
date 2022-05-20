//
//  EllipticalGradient_RadiusFraction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/05/22.
//

import SwiftUI

struct EllipticalGradient_RadiusFraction: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado Elíptico", subtitulo: "Fracción de Radio", description: "Se usan los parámetros de fracción de radio para controlar el rango de difusión.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(
                    .ellipticalGradient(twoColorsGradient,
                                        center: .center, startRadiusFraction: 0.1, endRadiusFraction: 0.9)
                )
                .overlay(
                    Text("Fracción de Radio")
                        .foregroundColor(.white), alignment: .top
                )
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(twoColorsGradient, center: .center))
                .overlay(
                    Text("Por defecto")
                        .foregroundColor(.white), alignment: .top
                )
            
        }
        .font(.title)
    }
}

struct EllipticalGradient_RadiusFraction_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_RadiusFraction()
    }
}
