//
//  ButtonStyle_PropertyValues.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct ButtonStyle_PropertyValues: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Estilo de Botón", subtitulo: "Pasando en valores de propiedades", description: "Para hacer código dinámico se emplean propiedades para valores que se deseen pasar.")
                
                Button("Color Predeterminado", action: {})
                    .buttonStyle(NewOutlineButtonStyle())
                
                Button("Color Predeterminado", action: {})
                    .buttonStyle(NewOutlineButtonStyle(buttonColor: .orange))
                
                Button("Color Predeterminado", action: {})
                    .buttonStyle(NewOutlineButtonStyle(buttonColor: .green))
                
            }
            .font(.title)
        }
    }
}

struct ButtonStyle_PropertyValues_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_PropertyValues()
    }
}
