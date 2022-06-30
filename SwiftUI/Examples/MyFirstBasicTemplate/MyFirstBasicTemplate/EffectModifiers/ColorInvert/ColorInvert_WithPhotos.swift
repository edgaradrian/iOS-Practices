//
//  ColorInvert_WithPhotos.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/06/22.
//

import SwiftUI

struct ColorInvert_WithPhotos: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color Invertido", subtitulo: "Con fotos", description: "Se puede invertir los colores en las fotos.")
            
            VStack(spacing: 5) {
            
                HStack {
                    Spacer()
                    Text("Foto Original")
                    Spacer()
                    Text("Colores Invertidos")
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 80)
                    
                    Spacer()
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 80)
                        .colorInvert()
                    
                    Spacer()
                }
                
                
                
            }
            
        }
    }
}

struct ColorInvert_WithPhotos_Previews: PreviewProvider {
    static var previews: some View {
        ColorInvert_WithPhotos()
    }
}
