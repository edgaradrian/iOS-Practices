//
//  Text_ShowingDates.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_ShowingDates: View {
    var body: some View {
        VStack {
            HeaderView(titulo: "Text", subtitulo: "Mostrando Fechas", description: "El Text permite mostrar fechas y rangos de fechas para la localidad del usuario.")
            
            Text(Date(), style: .date)
            Text(Date(), style: .time)
            Text(Date().addingTimeInterval(-6000), style: .offset)
            Text(Date().addingTimeInterval(-6000), style: .relative)
            Text(Date().addingTimeInterval(-6000), style: .timer)
            Text(Date()...Date().addingTimeInterval(6000))
            
        }
        .font(.title)
    }
}

struct Text_ShowingDates_Previews: PreviewProvider {
    static var previews: some View {
        Text_ShowingDates()
    }
}
