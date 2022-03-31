//
//  Text_DateFormat_Specific.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_DateFormat_Specific: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Formato de fecha - partes específicas", description: "El modificador de formato en fechas para partes específicas")
            
            Text(Date().formatted())
            
            DescView(description: "Partes", backColor: .blue)
            
            Group {
                Text("**Semana del Año** \(Date().formatted(.dateTime.week()))")
                Text("**Semana del Mes** \(Date().formatted(.dateTime.week(.weekOfMonth)))")
                Text("**Día de la semana** \(Date().formatted(.dateTime.weekday()))")
                Text("**Día de la semana** \(Date().formatted(.dateTime.weekday(.wide)))")
                Text("**Día #:** \(Date().formatted(.dateTime.day(.ordinalOfDayInMonth)))")
            }
            
            DescView(description: "El orden no importa", backColor: .blue)
            
            Group {
                Text(Date().formatted(.dateTime.day().month(.wide).year()))
            }
            
        }
        .font(.title)
    }
}

struct Text_DateFormat_Specific_Previews: PreviewProvider {
    static var previews: some View {
        Text_DateFormat_Specific()
    }
}
