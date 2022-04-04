//
//  TextField_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextField_Alignment: View {
    @State private var textFieldData1 = "Leading"
    @State private var textFieldDate2 = "Center"
    @State private var textFieldDate3 = "Trailing"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Textfield", subtitulo: "Alineado de Texto", description: "Cambiar el alineado del texto dentro del campo de texto utilizando el modificador multilineTextAlignment.")
            
            Group {
                TextField("Leading", text: $textFieldData1)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                
                TextField("Center", text: $textFieldDate2)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                
                TextField("Trailing", text: $textFieldDate3)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.trailing)
                
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextField_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Alignment()
    }
}
