//
//  Image_UsingGradients.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct Image_UsingGradients: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Imagen - Simbolos", subtitulo: "Gradientes", description: "El foregroundStyle también permite aplicar gradientes a los simbolos.")
            
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom)
                )
            
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom),
                    RadialGradient(colors: [.yellow.opacity(0.8), .purple.opacity(0.6)], center: .bottomTrailing, startRadius: 40, endRadius: 120)
                
                )
            
            
        }
        .font(.title)
    }
}

struct Image_UsingGradients_Previews: PreviewProvider {
    static var previews: some View {
        Image_UsingGradients()
    }
}
