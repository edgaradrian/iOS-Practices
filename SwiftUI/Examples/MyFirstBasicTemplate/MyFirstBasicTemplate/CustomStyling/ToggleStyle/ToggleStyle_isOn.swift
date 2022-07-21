//
//  ToggleStyle_isOn.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct ToggleStyle_isOn: View {
    
    @State private var toggleState = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Estilo Alternador", subtitulo: "Activado", description: "Se puede personalizar el estado de activado/desactivado en un alternador.")
            
            Toggle("", isOn: $toggleState)
                .toggleStyle(
                    CheckMarkToggleStyle(label: "Alternador Encendido/Apagado", color: .blue)
                )
            
            Toggle("", isOn: $toggleState)
                .toggleStyle(
                    CheckMarkToggleStyle(label: "Mi Alternador", color: .blue)
                )
        }
    }
}

struct ToggleStyle_isOn_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyle_isOn()
    }
}
