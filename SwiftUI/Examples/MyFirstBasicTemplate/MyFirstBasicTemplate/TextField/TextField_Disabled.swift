//
//  TextField_Disabled.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_Disabled: View {
    @State private var lastName = "Addick"
    @State private var city = "Distrito Federal"
    @State private var disabled = false
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Textfield", subtitulo: "Deshabilitar", description: "Se emplea el modificador disabled para habilitar/deshabilitar campos de texto.")
            
            Toggle("Mantener la información", isOn: $disabled)
                .padding(.horizontal)
            
            Group {
                
                TextField("Ingresa el apellido", text: $lastName)
                
                TextField("Ingresa la ciudad", text: $city)
                
            }
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            .disabled(disabled)
            .opacity(disabled ? 0.5 : 1)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TextField_Disabled_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Disabled()
    }
}
