//
//  TextFieldStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct TextFieldStyle_Intro: View {
    
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 15) {
            HeaderView(titulo: "Estilo Campo de Texto", subtitulo: "Introducción", description: "Se pueden agregar otros estilos además del plano para los campos de texto.")
            
            Group {
                
                Text("Automático")
                    .font(.title)
                TextField("Automático", text: $textFieldData)
                    .textFieldStyle(.automatic)
                
                Text("Plano")
                    .font(.title)
                TextField("Plano", text: $textFieldData)
                    .textFieldStyle(.plain)
                
                Text("Borde Redondeado")
                    .font(.title)
                TextField("Borde Redondeado", text: $textFieldData)
                    .textFieldStyle(.roundedBorder)
                
            }
            .padding(.horizontal)
        }
    }
}

struct TextFieldStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyle_Intro()
    }
}
