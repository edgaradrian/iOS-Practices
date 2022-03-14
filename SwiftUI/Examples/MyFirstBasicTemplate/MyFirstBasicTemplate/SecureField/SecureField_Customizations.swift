//
//  SecureField_Customizations.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct SecureField_Customizations: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HeaderView(titulo: "SecureField", subtitulo: "Customization", description: "Usar un ZStack para poner un RoundedRetangle detrás de un SecureField con un estilo de TextField plano")
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.cyan)
                TextField("nombre de usuario", text: $userName)
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
            .frame(height: 40)
            .padding(.horizontal)

            Text("O superponer el SecureField en la cima de otra vista o figura.")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.cyan)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.cyan)
                .overlay(
                    SecureField("contraseña", text: $password)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                )
                .frame(height: 40)
                .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct SecureField_Customizations_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_Customizations()
    }
}
