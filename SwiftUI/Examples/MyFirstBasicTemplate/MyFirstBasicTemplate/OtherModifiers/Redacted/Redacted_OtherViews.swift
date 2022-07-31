//
//  Redacted_OtherViews.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI

struct Redacted_OtherViews: View {
    
    @State private var text = "¡Redacta este texto!"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Redactado", subtitulo: "Otras vistas", description: "El modificador de redactado también trabaja en otras vistas que contienen texto.")
            
            VStack(spacing: 20) {
                
                Text("Campo Seguro")
                SecureField("nombre", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .redacted(reason: .placeholder)
                
                Text("Campo de Texto")
                TextField("nombre", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .redacted(reason: .placeholder)
                
                Text("Editor de Texto")
                TextEditor(text: $text)
                    .redacted(reason: .placeholder)
                    .border(Color.red, width: 1)
                
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct Redacted_OtherViews_Previews: PreviewProvider {
    static var previews: some View {
        Redacted_OtherViews()
    }
}
