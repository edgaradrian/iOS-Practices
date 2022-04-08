//
//  TextField_KeyboardSafeArea.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_KeyboardSafeArea: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            HeaderView(titulo: "TextField", subtitulo: "Teclado y Área Segura", description: "Los campos de texto automáticamente se mueven dentro de la vista cuando el teclado aparece.")
            
            TextField("Nombre de usuario", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

struct TextField_KeyboardSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextField_KeyboardSafeArea()
                .previewInterfaceOrientation(.portraitUpsideDown)
            TextField_KeyboardSafeArea()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
