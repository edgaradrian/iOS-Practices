//
//  TextField_CustomPlaceholder.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_CustomPlaceholder: View {
    @State private var textfieldData = ""
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "TextField", subtitulo: "Personalizar Sugerencia", description: "Actualmente no existe una manera de personalizar el texto de sugerencia. Se puede crear la sugerencia propia detrás del campo de texto.")
            
            Group {
                
                ZStack(alignment: .leading) {
                    
                    if textfieldData.isEmpty {
                        Text("Ingresa tu nombre")
                            .bold()
                            .foregroundColor(Color(.systemGray4))
                    }
                    TextField("", text: $textfieldData)
                    
                }
                .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 2)
                )
                
                
                ZStack(alignment: .leading) {
                    if textfieldData.isEmpty {
                        Text("Correo Electrónico")
                            .italic()
                            .foregroundColor(.blue)
                            .opacity(0.4)
                    }
                    TextField("", text: $textfieldData)
                }
                .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.cyan, lineWidth: 1)
                )
                
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextField_CustomPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextField_CustomPlaceholder()
    }
}
