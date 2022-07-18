//
//  ButtonStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct ButtonStyle_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Estilo de Botón", subtitulo: "Estilo Personalizado", description: "Se pueden crear botones personalizados para reusar en los botones de un proyecto entero.")
                
                Button("Bóton creado manualmente", action: {})
                    .padding()
                    .background(
                        Capsule()
                            .strokeBorder(Color.blue, lineWidth: 2)
                    )
                
                Button("Botón usando estilos", action: {})
                    .buttonStyle(OnlineButtonStyle())
                
                DescView(description: "Notar que el botón con estilo personalizado pierde el azul de acento predeterminado.", backColor: .blue)
            }
            .font(.title)
        }
    }
}

struct ButtonStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_Intro()
    }
}
