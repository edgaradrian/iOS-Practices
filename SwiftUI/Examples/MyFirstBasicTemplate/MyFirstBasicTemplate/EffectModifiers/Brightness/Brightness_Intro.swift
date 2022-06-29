//
//  Brightness_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 29/06/22.
//

import SwiftUI

struct Brightness_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Brillo", subtitulo: "Introducción", description: "Se puede usar el modificador de brillo para cambiar colores, imágenes o vistas para hacerlas más brillosas.")
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(0)
                        .overlay(Text("0%"))
                    
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(0.2)
                        .overlay(Text("20%"))
                    
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(0.4)
                        .overlay(Text("40%"))
                    
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(0.6)
                        .overlay(Text("60%"))
                    
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(0.8)
                        .overlay(Text("80%"))
                    
                    Color.green
                        .frame(width: 50, height: 50)
                        .brightness(1)
                        .overlay(Text("100%"))
                }
                
                HStack(spacing: 10) {
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(0)
                        .overlay(Text("0%"))
                    
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(0.2)
                        .overlay(Text("20%"))
                    
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(0.4)
                        .overlay(Text("40%"))
                    
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(0.6)
                        .overlay(Text("60%"))
                    
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(0.8)
                        .overlay(Text("80%"))
                    
                    Color.cyan
                        .frame(width: 50, height: 50)
                        .brightness(1)
                        .overlay(Text("100%"))
                }
                
                
                HStack(spacing: 10) {
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(0)
                        .overlay(Text("0%"))
                    
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(0.2)
                        .overlay(Text("20%"))
                    
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(0.4)
                        .overlay(Text("40%"))
                    
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(0.6)
                        .overlay(Text("60%"))
                    
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(0.8)
                        .overlay(Text("80%"))
                    
                    Color.purple
                        .frame(width: 50, height: 50)
                        .brightness(1)
                        .overlay(Text("100%"))
                }
                
                
                HStack(spacing: 10) {
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(0)
                        .overlay(Text("0%"))
                    
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(0.2)
                        .overlay(Text("20%"))
                    
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(0.4)
                        .overlay(Text("40%"))
                    
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(0.6)
                        .overlay(Text("60%"))
                    
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(0.8)
                        .overlay(Text("80%"))
                    
                    Color.orange
                        .frame(width: 50, height: 50)
                        .brightness(1)
                        .overlay(Text("100%"))
                }
                
            }
        }
    }
}

struct Brightness_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Brightness_Intro()
    }
}
