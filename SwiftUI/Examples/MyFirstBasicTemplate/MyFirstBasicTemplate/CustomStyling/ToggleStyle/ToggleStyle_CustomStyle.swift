//
//  ToggleStyle_CustomStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct ToggleStyle_CustomStyle: View {
    
    @State private var toggleState = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Estilo de Alternador", subtitulo: "Personalización", description: "Creando un estilo personalizado para el alternador.")
            
            Toggle("", isOn: $toggleState)
                .toggleStyle(CyanTextToggleStyle(label: "Alternador azul"))
        }
    }
}

struct ToggleStyle_CustomStyle_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyle_CustomStyle()
    }
}
