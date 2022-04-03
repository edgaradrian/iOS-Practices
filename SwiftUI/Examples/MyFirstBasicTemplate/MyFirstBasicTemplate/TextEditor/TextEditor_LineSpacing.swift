//
//  TextEditor_LineSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/04/22.
//

import SwiftUI

struct TextEditor_LineSpacing: View {
    @State private var text = "NeXT, Inc. was an American technology company that specialized in computer workstations intended for higher-education and business use."
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "TextEditor", subtitulo: "Espacio entre líneas", description: "Usar el modificador lineSpacing para incrementar o decrementar la cantidad de espacio entre las líneas de texto.")
            
            VStack {
                Text("Espacio entre Líneas: 20")
                TextEditor(text: $text)
                    .lineSpacing(20)
                    .font(.title2)
                    .frame(height: 200)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke())
                
                
                Text("Espacio entre líneas: -8")
                TextEditor(text: $text)
                    .lineSpacing(-8)
                    .font(.title2)
                    .frame(height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke())
                
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TextEditor_LineSpacing_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_LineSpacing()
    }
}
