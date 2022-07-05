//
//  Grayscale_withImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 05/07/22.
//

import SwiftUI

struct Grayscale_withImages: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Escala de Grises", subtitulo: "En Imágenes", description: "La escala de grises tiene el mismo efecto con las imágenes con la intensidad de colores.")
                
                HStack(spacing: 20) {
                    
                    VStack(spacing: 5) {
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(-1)
                            .overlay(
                                Text("-1"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(0)
                            .overlay(
                                Text("0"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(1)
                            .overlay(
                                Text("1"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(1.25)
                            .overlay(
                                Text("1.25"),
                                alignment: .top
                            )
                    }
                    
                    
                    VStack(spacing: 5) {
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(1.75)
                            .overlay(
                                Text("-1.75"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(2.1)
                            .overlay(
                                Text("2.1"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(3.4)
                            .overlay(
                                Text("3.4"),
                                alignment: .top
                            )
                        
                        
                        Image("packers")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .grayscale(5.6)
                            .overlay(
                                Text("5.6"),
                                alignment: .top
                            )
                    }
                    
                    
                }
                
            }
        }
    }
}

struct Grayscale_withImages_Previews: PreviewProvider {
    static var previews: some View {
        Grayscale_withImages()
    }
}
