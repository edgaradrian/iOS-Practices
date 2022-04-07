//
//  TextField_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_Customizing: View {
    @State private var textFieldWithText = "Con texto"
    @State private var textFieldNoText = ""
    @State private var withOutline = "Con el esquema"
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextField", subtitulo: "Personalizando", description: "Una manera de personalizar TextFields es agregar una forma detrás de uno que no tenga puesto el TextFieldStyle.")
            
            TextField("Placeholder Text", text: $textFieldNoText)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.cyan)
                )
                .padding()
            
            TextField("Placeholder Text", text: $withOutline)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.cyan, lineWidth: 2)
                )
                .padding()
            
            DescView(description: "Cambiar el color del texto usando el modificador foregroundColor", backColor: .blue)
            
            TextField("Primer Nombre", text: $textFieldWithText)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(.blue)
                .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct TextField_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Customizing()
    }
}
