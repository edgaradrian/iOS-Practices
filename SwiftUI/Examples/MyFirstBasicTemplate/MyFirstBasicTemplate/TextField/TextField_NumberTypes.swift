//
//  TextField_NumberTypes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct TextField_NumberTypes: View {
    @State private var number = 27
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            HeaderView(titulo: "TextField", subtitulo: "Tipos de número", description: "Usar el inicializador de formato para ligar un campo de texto con un tipo númerico")
            
            TextField("Edad", value: $number, format: .number)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            
            TextField("Porcentaje", value: $number, format: .percent)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            
            TextField("Cantidad", value: $number, format: .currency(code: "MXN"))
                .keyboardType(.numberPad)
                .padding(.horizontal)
            
        }
        .textFieldStyle(.roundedBorder)
        .font(.title)
        
        
    }
}

struct TextField_NumberTypes_Previews: PreviewProvider {
    static var previews: some View {
        TextField_NumberTypes()
    }
}
