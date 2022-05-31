//
//  ConfirmationDialog_Title.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/05/22.
//

import SwiftUI

struct ConfirmationDialog_Title: View {
    
    @State private var add = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ConfirmationDialog", subtitulo: "Visibilidad del título", description: "Para mostrar el título se utiliza el parámetro titleVisibility. Por defecto está en automático, que puede o no mostrarlo.")
            
            Button("Agregar") {
                self.add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Spacer()
        }
        .font(.title)
        .confirmationDialog("Agregar a:", isPresented: $add, titleVisibility: .visible) {
            Button("Familia") { }
            Button("Amigos") { }
            Button("Trabajo") { }
            Button("Basura", role: .destructive) { }
        }
        
    }
}

struct ConfirmationDialog_Title_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_Title()
    }
}
