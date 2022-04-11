//
//  TextField_PersonNameComponents.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct TextField_PersonNameComponents: View {
    @State private var name = PersonNameComponents(givenName: "Edgar", middleName: "Adrián", familyName: "Addick")
    
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "TextField", subtitulo: "PersonNameComponents", description: "Usar el valor y el iniciador de formato para usar un campo de texto con tipos que no sean cadena")
            
            TextField("Nombre corto", value: $name, format: .name(style: .short))
                .padding(.horizontal)
            
            TextField("Nombre medio", value: $name, format: .name(style: .medium))
                .padding(.horizontal)
            
            TextField("Nombre largo", value: $name, format: .name(style: .long))
                .padding(.horizontal)
            
            
        }
        .textFieldStyle(.roundedBorder)
        .font(.title)
    }
}

struct TextField_PersonNameComponents_Previews: PreviewProvider {
    static var previews: some View {
        TextField_PersonNameComponents()
    }
}
