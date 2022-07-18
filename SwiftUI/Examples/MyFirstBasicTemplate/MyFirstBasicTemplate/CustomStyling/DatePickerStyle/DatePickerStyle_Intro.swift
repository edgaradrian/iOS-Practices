//
//  DatePickerStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 18/07/22.
//

import SwiftUI

struct DatePickerStyle_Intro: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Seleccionador de Fecha", subtitulo: "Introducción", description: "No se puede crear un estilo para el seleccionador de fecha como en el caso de los botones.")
                
                DatePicker("Estilo automñatico", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.automatic)
                    .padding(.horizontal)
                
            }
            .minimumScaleFactor(0.5)
            
        }
    }
}

struct DatePickerStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerStyle_Intro()
    }
}
