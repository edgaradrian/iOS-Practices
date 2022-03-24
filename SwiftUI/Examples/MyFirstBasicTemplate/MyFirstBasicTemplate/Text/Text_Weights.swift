//
//  Text_Weights.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_Weights: View {
    var body: some View {
        VStack {
            
            HeaderView(titulo: "Text", subtitulo: "Font Weights", description: "Existen varios tipos de pesos de fuente")
            
            Group {
                Text("Ultralight")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Regular")
                    .fontWeight(.regular)
                Text("Medium")
                    .fontWeight(.medium)
                Text("Semibold")
                    .fontWeight(.semibold)
                Text("Bold")
                    .fontWeight(.bold)
                Text("Heavy")
                    .fontWeight(.heavy)
                Text("Black")
                    .fontWeight(.black)
            }
            .font(.title)
        }
    }
}

struct Text_Weights_Previews: PreviewProvider {
    static var previews: some View {
        Text_Weights()
    }
}
