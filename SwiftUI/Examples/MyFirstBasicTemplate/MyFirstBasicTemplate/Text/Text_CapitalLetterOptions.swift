//
//  Text_CapitalLetterOptions.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_CapitalLetterOptions: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Opciones de Capitalización", description: "Se tienen varias opciones de capitalizar letras.")
            
            Text("Este es el texto - 276")
            
            DescView(description: "lowercaseSmallCaps", backColor: .blue)
            
            Text("Este es el TEXTO - 276")
                .font(.title.lowercaseSmallCaps())
            
            DescView(description: "uppercaseSmallCaps", backColor: .blue)
            Text("Este es el TEXTO - 276")
                .font(.title.uppercaseSmallCaps())

            DescView(description: "smallCaps", backColor: .blue)
            Text("Este es el TEXTO - 276")
                .font(.title.smallCaps())
            
        }
        .font(.title)
    }
}

struct Text_CapitalLetterOptions_Previews: PreviewProvider {
    static var previews: some View {
        Text_CapitalLetterOptions()
    }
}
