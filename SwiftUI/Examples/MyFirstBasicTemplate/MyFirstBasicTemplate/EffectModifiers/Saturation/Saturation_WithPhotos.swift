//
//  Saturation_WithPhotos.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/07/22.
//

import SwiftUI

struct Saturation_WithPhotos: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Saturación", subtitulo: "Con imágenes", description: "La saturación tiene el mismo efecto con la intensidad de los colores.")
            
            HStack {
                
                VStack(spacing: 5) {
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(-1)
                        .overlay(
                            Text("-1"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(0)
                        .overlay(
                            Text("0"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(0.5)
                        .overlay(
                            Text("0.5"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(1)
                        .overlay(
                            Text("1"),
                            alignment: .top
                        )
                    
                }
                
                
                VStack(spacing: 5) {
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(1.5)
                        .overlay(
                            Text("1.5"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(2)
                        .overlay(
                            Text("2"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(3)
                        .overlay(
                            Text("3"),
                            alignment: .top
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .saturation(5)
                        .overlay(
                            Text("5"),
                            alignment: .top
                        )
                    
                }
                
                
            }
            
            
        }
    }
}

struct Saturation_WithPhotos_Previews: PreviewProvider {
    static var previews: some View {
        Saturation_WithPhotos()
    }
}
