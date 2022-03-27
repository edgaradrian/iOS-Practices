//
//  Text_TruncationMode.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_TruncationMode: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Modo de truncar", description: "Con el modificador de truncado, se puede controlar la elipse (...) que se muestra.")
            
            Text(".truncationMode(.tail)")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("Este es el mejor día de tu vida")
                .padding(.horizontal)
                .lineLimit(1)
            
            
            Text(".truncationMode(.middle)")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("Este es el mejor día de tu vida")
                .truncationMode(.middle)
                .padding(.horizontal)
                .lineLimit(1)
            
            Text(".truncationMode(.head)")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("Este es el mejor día de tu vida")
                .truncationMode(.head)
                .padding(.horizontal)
                .lineLimit(1)
            
        }
        .font(.title)
    }
}

struct Text_TruncationMode_Previews: PreviewProvider {
    static var previews: some View {
        Text_TruncationMode()
    }
}
