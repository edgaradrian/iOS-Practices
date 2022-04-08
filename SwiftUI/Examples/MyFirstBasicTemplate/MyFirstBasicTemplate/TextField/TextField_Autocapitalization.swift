//
//  TextField_Autocapitalization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_Autocapitalization: View {
    @State private var textFieldData1 = ""
    @State private var textFieldData2 = ""
    @State private var textFieldData3 = ""
    @State private var textFieldData4 = ""

    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "Autocapitslización", description: "Cuando se escribe en un campo de texto, siempre inicia con capitalización. Se puede cambiar este comportamiento con el autocapitalization modifier.")
            
            Text("Autocapitalization: .words")
            TextField("Nombre y Apellido", text: $textFieldData1)
                .autocapitalization(.words)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalización: .sentences")
            TextField("Sentencia", text: $textFieldData2)
                .autocapitalization(.sentences)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalization: .none")
            TextField("Dirección web ", text: $textFieldData3)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalization: .allCharacters")
            TextField("Código de país", text: $textFieldData4)
                .autocapitalization(.allCharacters)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
        }
    }
}

struct TextField_Autocapitalization_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Autocapitalization()
    }
}
