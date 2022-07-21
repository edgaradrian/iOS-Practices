//
//  ToggleStyle_NewSwitch.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct ToggleStyle_NewSwitch: View {
    
    @State private var toggleState = false
    @State private var toggleState2 = true
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Estilo de Alternador", subtitulo: "Coloreado", description: "Se puede recosntruir más el Alternador para dar mejor personalización.")
            
            Toggle("", isOn: $toggleState)
                .toggleStyle(
                    ColoredToggleStyle(label: "Mi Alternador Coloreado", onColor: .cyan, offColor: .red, thumbColor: .yellow)
                )
            
            Toggle("", isOn: $toggleState2)
                .toggleStyle(
                    ColoredToggleStyle(label: "Mi Alternador Coloreado", onColor: .purple, offColor: .orange, thumbColor: .green)
                )
            
        }
    }
}

struct ToggleStyle_NewSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyle_NewSwitch()
    }
}
