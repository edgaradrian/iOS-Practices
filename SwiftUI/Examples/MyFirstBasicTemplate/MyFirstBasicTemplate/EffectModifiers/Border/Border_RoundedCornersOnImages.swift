//
//  Border_RoundedCornersOnImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/06/22.
//

import SwiftUI

struct Border_RoundedCornersOnImages: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Borde", subtitulo: "Bordes Redondeados en Imágenes", description: "Las imágenes actuan diferente cuando se intenta agregar un Rectángulo redondeado como borde.")
            
            Image("packers")
                .resizable()
                .frame(width: 60, height: 60)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 5)
                )
            
            Text("El borde detrás de una imagen. Usando supersposición")
                .font(.title)
            
            Image("packers")
                .resizable()
                .frame(width: 60, height: 60)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 5)
                )
            
            Text("Para imágenes usar una máscara")
                .font(.title)
            
            Image("packers")
                .resizable()
                .frame(width: 60, height: 60)
                .mask(RoundedRectangle(cornerRadius: 21))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 5)
                )
            
            
        }
    }
}

struct Border_RoundedCornersOnImages_Previews: PreviewProvider {
    static var previews: some View {
        Border_RoundedCornersOnImages()
    }
}
