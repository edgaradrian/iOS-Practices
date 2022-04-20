//
//  Color_ColorInvert.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Color_ColorInvert: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Color", subtitulo: "Color Invertido", description: "Usando el modificador de colorInvert se incrementan las opcioes para la paleta del sistema de colores.")
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.cyan)
                        .frame(height: 80)
                        .overlay(
                            Text("Cyan")
                                .foregroundColor(.black)
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.cyan)
                        .frame(height: 80)
                        .colorInvert()
                }
                .padding(.horizontal)
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                        .frame(height: 80)
                        .overlay(
                            Text("Yellow")
                                .foregroundColor(.black)
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.yellow)
                        .frame(height: 80)
                        .colorInvert()
                }
                .padding(.horizontal)
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                        .frame(height: 80)
                        .overlay(
                            Text("Green")
                                .foregroundColor(.black)
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                        .frame(height: 80)
                        .colorInvert()
                }
                .padding(.horizontal)
                
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .frame(height: 80)
                        .overlay(
                            Text("Gray")
                                .foregroundColor(.black)
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .frame(height: 80)
                        .colorInvert()
                }
                .padding(.horizontal)
                
            }
            .font(.title)
        }
    }
}

struct Color_ColorInvert_Previews: PreviewProvider {
    static var previews: some View {
        Color_ColorInvert()
    }
}
