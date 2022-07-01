//
//  Contrast_WithPhotos.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/07/22.
//

import SwiftUI

struct Contrast_WithPhotos: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Contraste", subtitulo: "Con fotos", description: "El contraste tiene el mismo efecto en las imágenes al intensificar el color.")
            
            HStack {
                VStack(spacing: 3) {
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(-1)
                        .overlay(
                            Text("-1")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(0)
                        .overlay(
                            Text("0")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(0.75)
                        .overlay(
                            Text("0.75")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                }
                
                VStack(spacing: 3) {
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(1.5)
                        .overlay(
                            Text("1.5")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(3)
                        .overlay(
                            Text("3")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .contrast(5)
                        .overlay(
                            Text("5")
                                .foregroundColor(.black),
                            alignment: .top
                        )
                }
            }
            
        }
    }
}

struct Contrast_WithPhotos_Previews: PreviewProvider {
    static var previews: some View {
        Contrast_WithPhotos()
    }
}
