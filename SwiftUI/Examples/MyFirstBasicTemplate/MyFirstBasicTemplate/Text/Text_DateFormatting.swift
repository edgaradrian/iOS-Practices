//
//  Text_DateFormatting.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_DateFormatting: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Formato de fechas", description: "Usar el modificador de formato en fechas ayuda a darle una mejor presentación")
            
            Text(Date().formatted())
            
            Group {
                DescView(description: "Fecha", backColor: .blue)
                
                Group {
                    Text(Date().formatted(date: .abbreviated, time: .omitted))
                    Text(Date().formatted(date: .complete, time: .omitted))
                    Text(Date().formatted(date: .omitted, time: .omitted))
                    Text(Date().formatted(date: .long, time: .omitted))
                    Text(Date().formatted(date: .numeric, time: .omitted))
                }
                
                DescView(description: "Tiempo", backColor: .blue)
                
                Group {
                    Text(Date().formatted(date: .omitted, time: .complete))
                    Text(Date().formatted(date: .omitted, time: .shortened))
                    Text(Date().formatted(date: .omitted, time: .standard))
                }
                
            }
            .font(.title2)
            
        }
        .font(.title)
    }
}

struct Text_DateFormatting_Previews: PreviewProvider {
    static var previews: some View {
        Text_DateFormatting()
    }
}
