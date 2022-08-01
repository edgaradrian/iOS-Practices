//
//  Accessibility_Traits.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI

struct Accessibility_Traits: View {
    @State private var selected = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Accesabilidad", subtitulo: "Rasgos", description: "Se pueden usar rasgos para determinar si un botón es seleccionado o no")
            
            Button(action: {
                self.selected.toggle()
            }) {
                Image(systemName: selected ? "moon.circle.fill" : "moon.circle")
                    .font(.largeTitle)
            }
            .accessibilityLabel(Text("Modo nocturno"))
            .accessibilityAddTraits(selected ? .isSelected : [])
            
            
        }
        .font(.title)
    }
}

struct Accessibility_Traits_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Traits()
    }
}
