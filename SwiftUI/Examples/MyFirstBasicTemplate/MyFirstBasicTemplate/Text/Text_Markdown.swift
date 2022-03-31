//
//  Text_Markdown.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_Markdown: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Markdown", description: "Se pueden incluir los siguientes formatos para los textos (Text views)")
            
            Text("*Italic*")
            Text("_Italic_")
            Text("**Bold**")
            Text("__BOLD__")
            Text("***Bold & Italic***")
            Text("___Bold && Italic___")
            Text("[URL](https://developer.apple.com/)")
            Text("`Code // Monospaced`")
        }
        .font(.title)
    }
}

struct Text_Markdown_Previews: PreviewProvider {
    static var previews: some View {
        Text_Markdown()
    }
}
