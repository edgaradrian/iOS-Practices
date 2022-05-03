//
//  Image_FromSymbolsWithColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_FromSymbolsWithColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Imagen - Símbolos", subtitulo: "Símbolos Multicolores", description: "Algunos Símbolos tienen más que un color habilitado usando el modificador renderingMode.")
            
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
            
            Text("Si se usa dentro de un botón, se puede cambiar el color con el modificador accentColor: ")
                .padding(.horizontal)
            
            Button(action: {}) {
                Image(systemName: "note.text.badge.plus")
                    .renderingMode(.original)
                    .tint(.red)
                    .font(.largeTitle)
            }
            
            Text("O usando foregroundColor:")
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .foregroundColor(.orange)
                .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct Image_FromSymbolsWithColor_Previews: PreviewProvider {
    static var previews: some View {
        Image_FromSymbolsWithColor()
    }
}
