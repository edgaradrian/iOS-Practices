//
//  ColorInvert_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/06/22.
//

import SwiftUI

struct ColorInvert_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color Invertido", subtitulo: "Introducción", description: "Se utiliza el modificador de color invertido para obtener el color del otro lado de la paleta.")
            
            VStack(spacing: 5) {
                
                HStack {
                    Color.cyan
                    Color.cyan.colorInvert()
                }
                
                HStack {
                    Color.green
                    Color.green.colorInvert()
                }
                
                HStack {
                    Color.yellow
                    Color.yellow.colorInvert()
                }
                
                HStack {
                    Color.pink
                    Color.pink.colorInvert()
                }
                
                HStack {
                    Color.purple
                    Color.purple.colorInvert()
                }
                
            }
        }
    }
}

struct ColorInvert_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ColorInvert_Intro()
    }
}
