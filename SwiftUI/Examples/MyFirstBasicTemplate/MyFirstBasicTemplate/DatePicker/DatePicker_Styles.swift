//
//  DatePicker_Styles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_Styles: View {
    @State private var date = Date()
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HeaderView(titulo: "DatePicker", subtitulo: "Styles", description: "Estilo gráfico")
            
            DatePicker("Cumpleaños", selection: $date, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .frame(width: 320)
            
            DescView(description: "Estilo rueda", backColor: .blue)
            
            DatePicker("Cumpleaños", selection: $date, displayedComponents: .date)
                .datePickerStyle(.wheel)
                .labelsHidden()
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    
    }
}

struct DatePicker_Styles_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Styles()
    }
}
