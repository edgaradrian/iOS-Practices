//
//  DatePicker_DisplayedComponents.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_DisplayedComponents: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Date Picker -> iOS 14+", subtitulo: "Displayed Components", description: "Se puede mostrar más que la fecha. Se puede mostrar sólo la hora o la combinación fecha y hora.")
            
            DatePicker("Hoy", selection: $date, displayedComponents: .hourAndMinute)
                .labelsHidden()
                .padding()
            
            DatePicker("Hoy", selection: $date, displayedComponents: [.hourAndMinute, .date])
                .labelsHidden()
                .padding(.horizontal)
                .buttonStyle(.bordered)
            
        }
        .font(.title)
    }
}

struct DatePicker_DisplayedComponents_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_DisplayedComponents()
    }
}
