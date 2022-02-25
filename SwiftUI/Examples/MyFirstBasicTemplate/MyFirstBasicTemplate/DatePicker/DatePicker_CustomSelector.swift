//
//  DatePicker_CustomSelector.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_CustomSelector: View {
    @State private var date = Date()
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            HeaderView(titulo: "DatePicker", subtitulo: "Custom Selector", description: "En este momento no se puede personalizar el color del texto o el fondo. Aquí algunas opciones.")
            
            DatePicker("Hoy", selection: $date, displayedComponents: .date)
                .labelsHidden()
                .background(
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(.cyan)
                        .opacity(0.2)
                )
            
            DescView(description: "Lo que no sirve", backColor: .cyan)
            Form {
                
                DatePicker("accentColor", selection: $date, displayedComponents: .date)
                    .accentColor(.cyan)
                
                DatePicker("foregroundColor", selection: $date, displayedComponents: .date)
                    .foregroundColor(.cyan)
                
                DatePicker("foregroundStyle", selection: $date, displayedComponents: .date)
                    .foregroundStyle(.cyan, .cyan, .cyan)
                
                DatePicker("tint", selection: $date, displayedComponents: .date)
                    .tint(.cyan)
                
            }
            .font(.body)
            
        }
        .font(.title)
    
    }
}

struct DatePicker_CustomSelector_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_CustomSelector()
    }
}
