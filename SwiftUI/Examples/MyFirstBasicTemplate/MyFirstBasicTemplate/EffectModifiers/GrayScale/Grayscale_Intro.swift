//
//  Grayscale_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 05/07/22.
//

import SwiftUI

struct Grayscale_Intro: View {
    var body: some View {
        VStack(spacing: 5) {
            
            HeaderView(titulo: "Escala de Grises", subtitulo: "Introducción", description: "La escala de grises ofrece una manera de ajustar colores.")
            
            HStack(spacing: 0) {
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            HStack(spacing: 0) {
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            HStack(spacing: 0) {
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            HStack(spacing: 0) {
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.pink
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            
            HStack(spacing: 0) {
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            HStack(spacing: 0) {
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.gray
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
            
            HStack(spacing: 0) {
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(-1)
                    .overlay(Text("-1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(0)
                    .overlay(Text("-0"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(0.5)
                    .overlay(Text("0.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(1)
                    .overlay(Text("1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(2.1)
                    .overlay(Text("2.1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .grayscale(3.6)
                    .overlay(Text("3.6"))
            }
        }
    }
}

struct Grayscale_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Grayscale_Intro()
    }
}
