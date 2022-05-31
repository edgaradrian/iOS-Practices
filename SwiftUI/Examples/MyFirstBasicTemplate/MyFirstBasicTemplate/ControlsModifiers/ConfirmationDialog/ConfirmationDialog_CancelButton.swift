//
//  ConfirmationDialog_CancelButton.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/05/22.
//

import SwiftUI

struct ConfirmationDialog_CancelButton: View {
    
    @State private var add = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ConfirmationDialog", subtitulo: "Botón de Cancelado", description: "Se puede usar el rol del botón para poner el propio botón de cancelar.")
            
            Button("Agregar") {
                self.add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Spacer()
            
        }
        .font(.title)
        .confirmationDialog("Agregar a: ", isPresented: $add, titleVisibility: .visible) {
            Button("Ninguna de estos", role: .cancel) { }
            Button("Amigos") { }
            Button("Familia") { }
            Button("Basura") { }
            
        }
        
    }
}

struct ConfirmationDialog_CancelButton_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_CancelButton()
    }
}
