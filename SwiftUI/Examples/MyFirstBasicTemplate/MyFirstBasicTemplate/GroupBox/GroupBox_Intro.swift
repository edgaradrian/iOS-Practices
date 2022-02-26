//
//  GroupBox_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct GroupBox_Intro: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "GroupBox", subtitulo: "Introducción", description: "Puedes usar el Groupox para combinar vistas que son relacionadas")
            
            GroupBox {
                Text("Login")
                TextField("Usuario", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
            
        }
        .font(.title)
    }
}

struct GroupBox_Intro_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox_Intro()
    }
}
