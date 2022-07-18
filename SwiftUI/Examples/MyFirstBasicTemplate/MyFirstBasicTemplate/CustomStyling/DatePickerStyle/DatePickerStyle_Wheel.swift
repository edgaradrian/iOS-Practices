//
//  DatePickerStyle_Wheel.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct DatePickerStyle_Wheel: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Seleccionador de Fecha", subtitulo: "Estilo rueda", description: "LA rueda es un estilo giratorio.")
                
                DatePicker("Estilo rueda", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.wheel)
                    .padding()
                
            }
            .minimumScaleFactor(0.5)
            
        }
    }
}

struct DatePickerStyle_Wheel_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStyle_Wheel()
    }
}
