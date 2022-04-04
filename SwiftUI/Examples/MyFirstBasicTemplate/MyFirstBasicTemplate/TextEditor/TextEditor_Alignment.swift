//
//  TextEditor_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/04/22.
//

import SwiftUI

struct TextEditor_Alignment: View {
    @State private var text = "NeXT, Inc. was an American technology company that specialized in computer workstations intended for higher-education and business use."
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextEditor", subtitulo: "Alignment", description: "Por defecto el alignment es de primer orden")
            
            VStack {
                TextEditor(text: $text)
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .frame(height: 130)
                    .border(Color.secondary.opacity(0.5), width: 1)
                
                TextEditor(text: $text)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .frame(height: 130)
                    .border(Color.secondary.opacity(0.5), width: 1)
                
                TextEditor(text: $text)
                    .multilineTextAlignment(.trailing)
                    .font(.title2)
                    .frame(height: 130)
                    .border(Color.secondary.opacity(0.5), width: 1)
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextEditor_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_Alignment()
    }
}
