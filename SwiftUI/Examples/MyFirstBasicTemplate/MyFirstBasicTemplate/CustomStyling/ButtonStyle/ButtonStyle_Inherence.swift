//
//  ButtonStyle_Inherence.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct ButtonStyle_Inherence: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Estilo de Botón", subtitulo: "Aplicando en la vista madre", description: "Se puede aplicar a todos los controles colocando el estilo en la vista padre.")
                
                Button("Color Predeterminado", action: {})
                
                Button("Color Predeterminado", action: {})
                
                Button("Sobreescribiendo el estilo", action: {})
                    .background(
                        Capsule()
                            .fill(Color.cyan)
                    )
                
                Button("Color Verde", action: {})
                    .buttonStyle(NewOutlineButtonStyle(buttonColor: .green))
                
            }
            .font(.title)
            .buttonStyle(NewOutlineButtonStyle())
        }
    }
}

struct ButtonStyle_Inherence_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_Inherence()
    }
}
