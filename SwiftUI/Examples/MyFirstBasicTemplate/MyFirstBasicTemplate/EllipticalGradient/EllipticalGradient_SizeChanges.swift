//
//  EllipticalGradient_SizeChanges.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/05/22.
//

import SwiftUI

struct EllipticalGradient_SizeChanges: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado Elíptico", subtitulo: "Cambio de Tamaño", description: "Sin utilizar alguna otra propiedad, el degradado elíptico se estira hasta llenar el área disponible.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(twoColorsGradient, center: .center))
                .frame(height: 150)

            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(twoColorsGradient, center: .center))
                .frame(width: 150)
            
        }
        .font(.title)
    }
}

struct EllipticalGradient_SizeChanges_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_SizeChanges()
    }
}
