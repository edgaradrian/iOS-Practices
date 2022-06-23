//
//  Overlay_ImagesAndButtons.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Overlay_ImagesAndButtons: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Superposición", subtitulo: "Superposición de botones sobre imágenes", description: "Se pueden superposicionar botones en imágenes para proporcionar funcionalidad.")
            
            Image("ARod")
                .resizable()
                .frame(width: 150, height: 200)
                .overlay(
                    Button(action: {}, label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.gray)
                            .background(
                                Circle()
                                    .fill(Color.white)
                            )
                    })
                    .offset(x:10, y: -10),
                    alignment: .topTrailing
                )
        }
    }
}

struct Overlay_ImagesAndButtons_Previews: PreviewProvider {
    static var previews: some View {
        Overlay_ImagesAndButtons()
    }
}
