//
//  Text_Forrmat.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_Forrmat: View {
    @State private var value = 45.67
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Formato", description: "Existe un inicializador de texto que permite convertir una cadena a un formato específico")
            
            Text(value, format: .number)
            Text(value, format: .percent)
            Text(value, format: .currency(code: "MXN"))
        }
        .font(.title)
    }
}

struct Text_Forrmat_Previews: PreviewProvider {
    static var previews: some View {
        Text_Forrmat()
    }
}
