//
//  Resizable.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 25/07/22.
//

import SwiftUI

struct Resizable: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Redimensionamiento", subtitulo: "Inserción de tapas", description: "Usando inserción de tapas para determinar si una imagen debe ser redimensionada o estirada.")
                
                Text("Imagen original")
                Image("blue")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                Text("Redimensionada para botón")
                Button(action: {}) {
                    Image("blue")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 300, height: 60)
                        .overlay(
                            Text("Botón con imagen")
                                .foregroundColor(.white)
                        )
                }
                
                DescView(description: "Se puede redimensioanr y decir que parte no cmabie de tamaño", backColor: .blue)
                
                Button(action: {}) {
                    Image("blue")
                        .renderingMode(.original)
                        .resizable(capInsets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .frame(width: 300, height: 60)
                        .overlay(
                            Text("Botón con imagen")
                                .foregroundColor(.white)
                        )
                }
                
                
            }
            .font(.title)
        }
    }
}

struct Resizable_Previews: PreviewProvider {
    static var previews: some View {
        Resizable()
    }
}
