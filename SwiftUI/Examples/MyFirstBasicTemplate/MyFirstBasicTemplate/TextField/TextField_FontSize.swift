//
//  TextField_FontSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextField_FontSize: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextField", subtitulo: "Con modificadores de texto", description: "Cambiar el tamaño de la fuente dentro del campo de texto, sólo se necesita usar el modificador de fuente.")
            
            Group {
                
                TextField("Primer nombre", text: $textFieldData)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Primer nombre", text: $textFieldData)
                    .font(.system(size: 36, design: .monospaced))
                    .textFieldStyle(.roundedBorder)
                
                TextField("Primer nombre", text: $textFieldData)
                    .font(.system(size: 20, design: Font.Design.serif))
                    .textFieldStyle(.roundedBorder)
                
            }
            .padding(.horizontal)
            
            Text("Notar que esto cambia la sugerencia en el campo de texto.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
        }
        .font(.title)
    }
}

struct TextField_FontSize_Previews: PreviewProvider {
    static var previews: some View {
        TextField_FontSize()
    }
}
