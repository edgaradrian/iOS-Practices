//
//  Overlay_Images.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Overlay_Images: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Superposición", subtitulo: "Sobre imágenes con alineado", description: "La superposición es genial para poner texto sobre imágenes.")
            
            Image("packers")
                .resizable()
                .overlay(
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.5),
                    alignment: .bottom
                )
                .overlay(
                    Text("Packers")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.bottom),
                    alignment: .bottom
                )
            
        }
    }
}

struct Overlay_Images_Previews: PreviewProvider {
    static var previews: some View {
        Overlay_Images()
    }
}
