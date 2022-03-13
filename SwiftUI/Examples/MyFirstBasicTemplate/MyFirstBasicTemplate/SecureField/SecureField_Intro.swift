//
//  SecureField_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct SecureField_Intro: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            HeaderView(titulo: "SecureField", subtitulo: "Introducción", description: "Los SecureField, como los TextFields, necesitan una variabla local ligada.")
            
            TextField("Nombre de usuario", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Spacer()
            
        }
    }
}

struct SecureField_Intro_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_Intro()
    }
}
