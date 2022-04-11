//
//  Toggle_ToggleStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct Toggle_ToggleStyle: View {
    @State private var isOn = false
    @State private var toggleOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Toggle", subtitulo: "ToggleStyle", description: "Aplciar el toggleStyle en un Toggle hará que se parezca a un botón con dos estados.")
            
            Toggle(isOn: $isOn) {
                Image(systemName: "heart")
                    .symbolVariant(isOn ? .fill : .none)
            }
            .padding()
            
            Toggle(isOn: $isOn) {
                Image(systemName: "heart")
                    .symbolVariant(isOn ? .fill : .none)
            }
            .toggleStyle(.button)
            
            Toggle(isOn: $toggleOn) {
                Image(systemName: "heart")
                    .symbolVariant(toggleOn ? .fill : .none)
            }
            .toggleStyle(.button)
            
        }
        .font(.title)
    }
}

struct Toggle_ToggleStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_ToggleStyle()
    }
}
