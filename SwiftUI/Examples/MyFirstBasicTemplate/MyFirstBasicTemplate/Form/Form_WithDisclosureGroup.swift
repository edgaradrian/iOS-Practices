//
//  Form_WithDisclosureGroup.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_WithDisclosureGroup: View {
    @State private var settingsExpanded = true
    @State private var trebleOn = true
    @State private var bassOn = false
    @State private var levels = 0.5
    
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: "Form", subtitulo: "With DisclosureGroup", description: "Puedes agregar disclosureGroups al formulario para que los usuarios puedan expandir más ajustes")
            
            Form {
                DisclosureGroup("Ajustes de Audio", isExpanded: $settingsExpanded) {
                    VStack {
                        Toggle("Treble", isOn: $trebleOn)
                        Toggle("Bass", isOn: $bassOn)
                        Slider(value: $levels)
                    }
                    .font(.title2)
                    .padding()
                }
            }
            
            
        }
        .font(.title)
        .accentColor(.cyan)
        
    }

}

struct Form_WithDisclosureGroup_Previews: PreviewProvider {
    static var previews: some View {
        Form_WithDisclosureGroup()
    }
}
