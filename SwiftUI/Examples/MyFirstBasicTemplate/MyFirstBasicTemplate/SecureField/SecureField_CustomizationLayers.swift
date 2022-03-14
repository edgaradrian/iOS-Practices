//
//  SecureField_CustomizationLayers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct SecureField_CustomizationLayers: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "SecureField", subtitulo: "Personalización de capas", description: "Se puede agregar un fondo para el SecureField. ")
            
            SecureField("contraseña", text: $password)
                .foregroundColor(.white)
                .frame(height: 40)
                .padding(.horizontal)
                .background(
                    Capsule()
                        .foregroundColor(.cyan)
                )
                .padding(.horizontal)
            
        }
    }
}

struct SecureField_CustomizationLayers_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_CustomizationLayers()
    }
}
