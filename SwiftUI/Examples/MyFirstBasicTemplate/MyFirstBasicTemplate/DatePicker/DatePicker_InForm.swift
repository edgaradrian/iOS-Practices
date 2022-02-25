//
//  DatePicker_InForm.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_InForm: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Date Picker", subtitulo: "Usado en un form", description: "Cuando es usado en un form, el DatePicker es usado en el estilo compacto por defecto.")
            
            Form {
                DatePicker("Hoy", selection: $date, displayedComponents: .date)
                
                Section {
                    Text("Estilo Gráfico:")
                    DatePicker("Cumpleaños", selection: $date, displayedComponents: .date)
                        .datePickerStyle(.graphical)
                }
                
            }
            
        }
        .font(.title)
    }
}

struct DatePicker_InForm_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_InForm()
    }
}
