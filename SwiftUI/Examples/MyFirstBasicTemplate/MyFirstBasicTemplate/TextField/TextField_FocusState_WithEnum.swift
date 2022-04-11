//
//  TextField_FocusState_WithEnum.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct TextField_FocusState_WithEnum: View {
    
    enum NameFields {
        case firstName
        case lastName
    }
    
    @State private var firstName = ""
    @State private var lastName = ""
    @FocusState private var nameFields: NameFields?
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextField", subtitulo: "@FocusState", description: "Se puede usar enums para poner multiples campos de texto en la pantalla.")
            
            TextField("Primer nombre", text: $firstName)
                .padding(.horizontal)
                .focused($nameFields, equals: .firstName)
            
            TextField("Apellido Materno", text: $lastName)
                .padding(.horizontal)
                .focused($nameFields, equals: .lastName)
            
            Button("Guardar") {
                if firstName.isEmpty {
                    nameFields = .firstName
                } else if lastName.isEmpty {
                    nameFields = .lastName
                } else {
                    //Función de guardar
                }
            }
            
        }
        .textFieldStyle(.roundedBorder)
        .font(.title)
    }
}

struct TextField_FocusState_WithEnum_Previews: PreviewProvider {
    static var previews: some View {
        TextField_FocusState_WithEnum()
    }
}
