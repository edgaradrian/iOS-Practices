//
//  DatePicker_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_Customizing: View {
        
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 30) {
            
            HeaderView(titulo: "DatePicker", subtitulo: "Customizing", description: "Personalizar el fondo y el color del acento")
            
            DatePicker("Cumpleaños", selection: $date, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .accentColor(.cyan)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.cyan)
                        .opacity(0.1)
                        .shadow(radius: 1, x: 4, y: 4)
                )
                .padding()
            
            DatePicker("Hoy", selection: $date, displayedComponents: .date)
                .frame(height: 50)
                .padding()
                .background(
                    Rectangle()
                        .fill(.cyan)
                        .shadow(radius: 4)
                        .opacity(0.2)
                )
            
        }
        .font(.title)
    }
}

struct DatePicker_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Customizing()
    }
}
