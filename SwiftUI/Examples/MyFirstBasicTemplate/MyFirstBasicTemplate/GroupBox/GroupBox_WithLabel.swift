//
//  GroupBox_WithLabel.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct GroupBox_WithLabel: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "GroupBox", subtitulo: "Con etiqueta", description: "En lugar de usar tu propia etiqueta (label), el GroupBox tiene uno.")
        
            GroupBox("Login (Default text format)") {
                TextField("Usuario", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Contraseña", text: $password)
                    .textFieldStyle(.roundedBorder)
            }
            
            DescView(description: "Puedes sobrescribir el formato de la etiqueta", backColor: .cyan)
            
            GroupBox {
                TextField("Usuario", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
            } label: {
                Text("Reset contraseña")
                    .font(.title2)
                    .fontWeight(.light)
            }
            
            
        }
        .font(.title)
    }
}

struct GroupBox_WithLabel_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox_WithLabel()
    }
}
