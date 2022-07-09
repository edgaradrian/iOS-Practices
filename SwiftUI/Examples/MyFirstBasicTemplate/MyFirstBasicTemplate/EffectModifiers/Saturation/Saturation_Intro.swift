//
//  Saturation_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/07/22.
//

import SwiftUI

struct Saturation_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Saturación", subtitulo: "Introducción", description: "La Saturación ofrece otra manera de intensificar los colores. El valor 1 es el predeterminado.")
            
            HStack(spacing: 0) {
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(0)
                    .overlay(Text("0"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(0.5)
                    .overlay(Text("0.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(1)
                    .overlay(Text("1"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(1.5)
                    .overlay(Text("1.5"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(2)
                    .overlay(Text("2"))
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .saturation(2.5)
                    .overlay(Text("2.5"))
            }
            
            HStack(spacing: 0) {
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(0)
                    .overlay(Text("0"))
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(0.5)
                    .overlay(Text("0.5"))
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(1)
                    .overlay(Text("1"))
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(1.5)
                    .overlay(Text("1.5"))
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(2)
                    .overlay(Text("2"))
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .saturation(2.5)
                    .overlay(Text("2.5"))
            }
            
            
            HStack(spacing: 0) {
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(0)
                    .overlay(Text("0"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(0.5)
                    .overlay(Text("0.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(1)
                    .overlay(Text("1"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(1.5)
                    .overlay(Text("1.5"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(2)
                    .overlay(Text("2"))
                
                Color.green
                    .frame(width: 50, height: 50)
                    .saturation(2.5)
                    .overlay(Text("2.5"))
            }
            
            HStack(spacing: 0) {
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(0)
                    .overlay(Text("0"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(0.5)
                    .overlay(Text("0.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(1)
                    .overlay(Text("1"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(1.5)
                    .overlay(Text("1.5"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(2)
                    .overlay(Text("2"))
                
                Color.red
                    .frame(width: 50, height: 50)
                    .saturation(2.5)
                    .overlay(Text("2.5"))
            }
            
            
            HStack(spacing: 0) {
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(0)
                    .overlay(Text("0"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(0.5)
                    .overlay(Text("0.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(1)
                    .overlay(Text("1"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(1.5)
                    .overlay(Text("1.5"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(2)
                    .overlay(Text("2"))
                
                Color.yellow
                    .frame(width: 50, height: 50)
                    .saturation(2.5)
                    .overlay(Text("2.5"))
            }
            
        }
    }
}

struct Saturation_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Saturation_Intro()
    }
}
