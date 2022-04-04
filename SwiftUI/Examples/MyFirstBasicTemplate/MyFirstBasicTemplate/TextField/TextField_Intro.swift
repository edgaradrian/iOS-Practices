//
//  TextField_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextField_Intro: View {
    @State private var textfieldData = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "TextField", subtitulo: "Introducción", description: "Se requiere de variabble ligadas para usar con los campos de texto. Por defecto se tiene el estilo plano TextFieldStyle.")
            
            Image(systemName: "arrow.down.circle")
            TextField("Esto es un campo de texto", text: $textfieldData)
                .padding(.horizontal)
            Image(systemName: "arrow.up.circle")
            
            Text("Usando el estilo .roundedBorder para el campo de texto")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .allowsTightening(true)
                
            
            TextField("", text: $textfieldData)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextField_Intro_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Intro()
    }
}
