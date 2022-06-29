//
//  Border_Gradients.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 29/06/22.
//

import SwiftUI

struct Border_Gradients: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Borde", subtitulo: "Con degradado", description: "El primer parámetro del modificador de borde es un tipo de estilo de figura. Los tipos de estilo pueden ser degradados.")
            
            Button(action: {}) {
                Text("Borde alrededor de un botón")
                    .padding()
            }
            .border(newLinearGradient, width: 10)
            
            Text("Borde alrededor de texto")
                .padding()
                .border(linearGradient, width: 10)
            
            Image("packers")
                .resizable()
                .frame(width: 60, height: 60)
                .border(angularGradient, width: 10)
            
        }
        .font(.title)
    }
}

struct Border_Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Border_Gradients()
    }
}
