//
//  Text_TextStyles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_TextStyles: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Text", subtitulo: "Text Styles", description: "Para agregar un estilo de texto se utiliza el modificador .font")
            
            Group {
                Text("Font.largeTitle").font(.largeTitle)
                Text("Font.title").font(.title)
                Text("Font.title2 (iOS 14)").font(.title2)
                Text("Font.title3 (iOS 14)").font(.title3)
            }
            Group {
                Text("Font.headline").font(.headline)
                Text("Font.body").font(.body)
                Text("Font.callout").font(.callout)
                Text("Font.subheadline").font(.subheadline)
                Text("Font.footnote").font(.footnote)
                Text("Font.caption").font(.caption)
                Text("Font.caption2 (iOS 14)").font(.caption2)
            }
        }
    }
}

struct Text_TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        Text_TextStyles()
    }
}
