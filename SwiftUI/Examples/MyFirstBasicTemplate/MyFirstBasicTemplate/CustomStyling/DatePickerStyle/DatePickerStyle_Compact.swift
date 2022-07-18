//
//  DatePickerStyle_Compact.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct DatePickerStyle_Compact: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Seleccionador de Fecha", subtitulo: "Estilo compacto", description: "No hay mucha diferencia con el estilo automático.")
                
                DatePicker("Estilo compacto", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.compact)
                    .padding()
                
            }
            .minimumScaleFactor(0.5)
            
        }
    }
}

struct DatePickerStyle_Compact_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStyle_Compact()
    }
}
