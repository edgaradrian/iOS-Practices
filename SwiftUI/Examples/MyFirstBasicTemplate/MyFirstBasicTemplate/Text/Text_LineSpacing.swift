//
//  Text_LineSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_LineSpacing: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Text", subtitulo: "Espacio entre líneas", description: "Se puede usar el modificador de lineSpacing para tener más espacio entre líneas.")
            
            Text("SwiftUI ofrece este modificador para situaciones donde se desee incrmentar el espacio entre líneas.")
                .font(.title)
            
            Text("Con espacio entre líneas de 16: ")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
            
            Text("SwiftUI ofrece este modificador para situaciones donde se desee incrmentar el espacio entre líneas.")
                .lineSpacing(16.0)
                .font(.title)
            
        }
    }
}

struct Text_LineSpacing_Previews: PreviewProvider {
    static var previews: some View {
        Text_LineSpacing()
    }
}
