//
//  HeaderView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/02/22.
//

import SwiftUI

struct HeaderView: View {
    let titulo: String
    let subtitulo: String
    let description: String
    
    var body: some View {
        VStack {
            Text(titulo)
                .font(.largeTitle)
            
            Text(subtitulo)
                .font(.title)
                .foregroundColor(.gray)
            
            Text(description)
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titulo: "Título", subtitulo: "Subtítulo", description: "Descripción")
    }
}
