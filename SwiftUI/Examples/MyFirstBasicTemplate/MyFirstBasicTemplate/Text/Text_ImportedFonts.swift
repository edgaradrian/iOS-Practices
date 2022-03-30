//
//  Text_ImportedFonts.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_ImportedFonts: View {
    var body: some View {
        VStack {
            HeaderView(titulo: "Text", subtitulo: "Fuentes Importadas", description: "Usar Font.custom() para poner fuentes importadas y agregarlas al proyecto")
            
            Text("Holaaaaaaa... Enfermera")
                .font(.custom("Pirate of the Seaside Bubbles", size: 60))
                .padding(.top)
        }
    }
}

struct Text_ImportedFonts_Previews: PreviewProvider {
    static var previews: some View {
        Text_ImportedFonts()
    }
}
