//
//  Text_Weights_TextStyles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_Weights_TextStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Pesos y estilos de fuentes", description: "Los pesos de las fuentes pueden ser combinados con los estilos.")
            
            Text("Ultralight - Title")
                .fontWeight(.ultraLight)
                .font(.title)
            
            Text("Thin - Body")
                .fontWeight(.thin)
                .font(.body)
            
            Text("Light - Large Title")
                .fontWeight(.light)
                .font(.largeTitle)
            
            Text("Bold - Callout")
                .fontWeight(.bold)
                .font(.callout)
            
            Text("Black - Title")
                .font(Font.title.weight(.black))
            
        }
    }
}

struct Text_Weights_TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        Text_Weights_TextStyles()
    }
}
