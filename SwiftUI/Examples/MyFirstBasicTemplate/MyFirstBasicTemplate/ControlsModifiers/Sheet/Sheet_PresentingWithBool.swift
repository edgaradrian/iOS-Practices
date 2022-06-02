//
//  Sheet_PresentingWithBool.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/06/22.
//

import SwiftUI

struct Sheet_PresentingWithBool: View {
    
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Mostrar modal") {
            self.presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            ModalView(title: "Hoja", subtitle: "Mostrando con un booleano.")
        }
    }
}

struct Sheet_PresentingWithBool_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_PresentingWithBool()
    }
}

struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    
    let title: String
    let subtitle: String
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: title, subtitulo: subtitle, description: "Por cambio en la variable State")
            Spacer()
            Button("Descartar") {
                dismiss()
            }
            .tint(.blue)
        }
        .padding(.top)
    }
    
}
