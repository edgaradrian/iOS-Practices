//
//  DatePicker_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DatePicker_Intro: View {
   @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "DatePicker", subtitulo: "Introducción", description: "El DatePicker mostrará una fecha que puede ser pulsada como un botón. Adicional se puede agregar una etiqueta.")
            
            Text("El estilo predeterminado:")
            
            DatePicker("Hoy", selection: $date)
                .labelsHidden()
                .padding()
            
            Text("Con etiqueta:")
            
            DatePicker("Hoy", selection: $date, displayedComponents: .date)
                .padding()
            
        }
        .font(.title)
    }
}

struct DatePicker_Intro_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Intro()
    }
}
