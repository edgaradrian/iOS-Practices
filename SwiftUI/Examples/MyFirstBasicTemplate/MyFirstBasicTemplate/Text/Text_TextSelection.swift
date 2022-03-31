//
//  Text_TextSelection.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_TextSelection: View {
    var body: some View {
        VStack(spacing: 60) {
            
            HeaderView(titulo: "Text", subtitulo: "Selección de Texto", description: "Agregar el modificador de selección de texto ")
            
            Text("No selección de texto")
            
            Text("Permite selección de texto")
                .textSelection(.enabled)
        }
        .font(.title)
    }
}

struct Text_TextSelection_Previews: PreviewProvider {
    static var previews: some View {
        Text_TextSelection()
    }
}
