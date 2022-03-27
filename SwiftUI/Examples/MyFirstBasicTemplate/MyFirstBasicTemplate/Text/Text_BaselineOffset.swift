//
//  Text_BaselineOffset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_BaselineOffset: View {
    var body: some View {
        VStack {
            HeaderView(titulo: "BaselineOffset", subtitulo: "Desplazamiento de la línea base", description: "Por defecto,  se puede combinar el texto en la misma línea base como esto: ")
                .font(.title)
                .layoutPriority(1)
            
            Text("100")
            + Text(" SWIFTUI ").font(.largeTitle).fontWeight(.light)
            + Text(" VIEWS")
            
            DescView(description: "Pero se puede desplazar la línea de base del texto para efectos", backColor: .blue)
            
            Group {
                Text("100").bold()
                + Text(" SWIFTUI ")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                    .baselineOffset(-12)
                + Text("VIEWS").bold()
            }
        }
    }
}

struct Text_BaselineOffset_Previews: PreviewProvider {
    static var previews: some View {
        Text_BaselineOffset()
    }
}
