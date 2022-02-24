//
//  Button_Role.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_Role: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Button", subtitulo: "Role", description: "Usa el parámetro de rol para especificar el tipo de boton que tienes")
            
            Button("Normal") { }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button("Destructive", role: .destructive) { }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button("Destructive", role: .destructive) { }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Cancel", role: .cancel) { }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            
        }
        .font(.title)
        .accentColor(.blue)
    }
}

struct Button_Role_Previews: PreviewProvider {
    static var previews: some View {
        Button_Role()
    }
}
