//
//  Contrast_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/07/22.
//

import SwiftUI

struct Contrast_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Constraste", subtitulo: "Introducción", description: "Contrastes negativos invertirán los colores. Valores positivos los intensificarán. El valor 1 es por defecto.")
            
            HStack(spacing: 0) {
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(-1.5)
                    .overlay(Text("-1.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(-1)
                    .overlay(Text("-1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(0)
                    .overlay(Text("0"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(0.5)
                    .overlay(Text("0.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(1)
                    .overlay(Text("1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .contrast(1.5)
                    .overlay(Text("1.5"))
            }
            
            
            HStack(spacing: 0) {
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(-1.5)
                    .overlay(Text("-1.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(-1)
                    .overlay(Text("-1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(0)
                    .overlay(Text("0"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(0.5)
                    .overlay(Text("0.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(1)
                    .overlay(Text("1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .contrast(1.5)
                    .overlay(Text("1.5"))
            }
            
            
            HStack(spacing: 0) {
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(-1.5)
                    .overlay(Text("-1.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(-1)
                    .overlay(Text("-1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(0)
                    .overlay(Text("0"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(0.5)
                    .overlay(Text("0.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(1)
                    .overlay(Text("1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .contrast(1.5)
                    .overlay(Text("1.5"))
            }
            
            
            HStack(spacing: 0) {
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(-1.5)
                    .overlay(Text("-1.5"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(-1)
                    .overlay(Text("-1"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(0)
                    .overlay(Text("0"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(0.5)
                    .overlay(Text("0.5"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(1)
                    .overlay(Text("1"))
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .contrast(1.5)
                    .overlay(Text("1.5"))
            }
            
            HStack(spacing: 0) {
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(-1.5)
                    .overlay(Text("-1.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(-1)
                    .overlay(Text("-1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(-0.5)
                    .overlay(Text("-0.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(0)
                    .overlay(Text("0"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(0.5)
                    .overlay(Text("0.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(1)
                    .overlay(Text("1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .contrast(1.5)
                    .overlay(Text("1.5"))
            }
            
        }
    }
}

struct Contrast_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Contrast_Intro()
    }
}
