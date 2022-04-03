//
//  Text_TimeFormatting.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_TimeFormatting: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Text", subtitulo: "Formato de Tiempo - Partes específicas", description: "Usar el modificador de formato en fechas para mostrar partes específicas de tiempo.")
            
            Text(Date().formatted())
            
            DescView(description: "Partes", backColor: .blue)
            Group {
                Text("**Hour:** \(Date().formatted(.dateTime.hour()))")
                Text("**Minutes** \(Date().formatted(.dateTime.minute()))")
                Text("**Seconds:** \(Date().formatted(.dateTime.second()))")
                Text("**Timezone:** \(Date().formatted(.dateTime.timeZone()))")
            }
            
            DescView(description: "Otros formatos", backColor: .blue)
            
            Group {
                Text(Date().formatted(.dateTime.minute().hour(.twoDigits(amPM: .omitted))))
                Text(Date().formatted(.dateTime.hour(.twoDigits(amPM: .narrow))))
                Text(Date().formatted(.dateTime))
            }
            
        }
        .font(.title)
    }
}

struct Text_TimeFormatting_Previews: PreviewProvider {
    static var previews: some View {
        Text_TimeFormatting()
    }
}
