//
//  Sheet_SwipeDisabled.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/06/22.
//

import SwiftUI

struct Sheet_SwipeDisabled: View {
    
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Mostrar hoja") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            SheetView(title: "Hoja", subtitle: "Deslizado hacia abajo deshabilitado.")
        }
        .font(.title)
    }
}

struct Sheet_SwipeDisabled_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_SwipeDisabled()
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: title, subtitulo: subtitle, description: "Agregar el modificador interactiveDismissDisabled para prevenir el cerrar la hoja al deslizar hacia abajo.")
            
            Spacer()
            
            Button("Descartar") {
                dismiss()
            }
            .tint(.blue)
            .padding(.bottom)
            
        }
        .interactiveDismissDisabled()
    }
}
