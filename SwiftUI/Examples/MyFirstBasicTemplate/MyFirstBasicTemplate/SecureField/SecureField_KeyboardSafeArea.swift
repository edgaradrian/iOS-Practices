//
//  SecureField_KeyboardSafeArea.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct SecureField_KeyboardSafeArea: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "SecureField", subtitulo: "Teclado en Safe Area", description: "SecureFields automáticamente se moveran dentro de la vista cuando el teclado aparezca. El teclado ajustará el fondo del área segura y no cubrirá niguna vista.")
            
            TextField("user name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct SecureField_KeyboardSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_KeyboardSafeArea()
    }
}
