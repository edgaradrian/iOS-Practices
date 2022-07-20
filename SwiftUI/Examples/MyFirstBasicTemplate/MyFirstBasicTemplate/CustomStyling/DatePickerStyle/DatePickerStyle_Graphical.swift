//
//  DatePickerStyle_Graphical.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct DatePickerStyle_Graphical: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Seleccionador de Fecha", subtitulo: "Estilo gráfico", description: "El estilo gráfico incluido en iOS 14.")
                
                DatePicker("Estilo gráfico", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .labelsHidden()
                    .padding()
                
            }
            .minimumScaleFactor(0.5)
            
        }
    }
    
    
}

struct DatePickerStyle_Graphical_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStyle_Graphical()
    }
}
