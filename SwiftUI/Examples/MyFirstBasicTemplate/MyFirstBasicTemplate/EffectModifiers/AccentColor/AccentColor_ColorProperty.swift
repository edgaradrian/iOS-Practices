//
//  AccentColor_ColorProperty.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/06/22.
//

import SwiftUI

struct AccentColor_ColorProperty: View {
    var body: some View {
        VStack {
            HeaderView(titulo: "Color de Acento", subtitulo: "Propiedad de Color", description: "Se puede acceder al color del acento definido en el catálogo Asset, en la propiedad definida como accentColor.")
            
            Circle()
                .fill(Color.accentColor)
                .overlay(
                    Image(systemName: "candybarphone")
                        .font(.system(size: 150, weight: .thin, design: .default))
                        .foregroundColor(.white)
                )
                .frame(width: 200)
            
        }
        .font(.title)
    }
}

struct AccentColor_ColorProperty_Previews: PreviewProvider {
    static var previews: some View {
        AccentColor_ColorProperty()
    }
}
