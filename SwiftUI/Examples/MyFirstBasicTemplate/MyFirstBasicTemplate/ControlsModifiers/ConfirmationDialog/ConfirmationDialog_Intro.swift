//
//  ConfirmationDialog_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct ConfirmationDialog_Intro: View {
    
    @State private var delete = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ConfirmationDialog", subtitulo: "Introducción", description: "Usar ConfirmationDialog para dar retroalimentación al usuario.")
            
            Button(role: .destructive) {
                self.delete.toggle()
            } label: {
                Text("Borrar")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Spacer()
            
        }
        .font(.title)
        .confirmationDialog("¿Estás seguro que quieres eliminar?", isPresented: $delete) {
            Button("Borrar", role: .destructive) { }
        }
    }
}

struct ConfirmationDialog_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_Intro()
    }
}
