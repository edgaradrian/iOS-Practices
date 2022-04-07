//
//  TextField_Border.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_Border: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "Border", description: "Usar el modificador de border para aplicar un ShapeStyle para el borde del campo de texto.")
            
            Group {
                
                TextField("Información", text: $textFieldData)
                    .padding(5)
                    .border(.blue)
                
                TextField("Información", text: $textFieldData)
                    .padding(5)
                    .border(.ultraThickMaterial, width: 4)
                
                TextField("Información", text: $textFieldData)
                    .padding(5)
                    .border(.tertiary, width: 5)
                
                TextField("Información", text: $textFieldData)
                    .padding(5)
                    .border(
                        LinearGradient(colors: [.blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct TextField_Border_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Border()
    }
}
