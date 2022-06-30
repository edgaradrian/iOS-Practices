//
//  ColorMultiply_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/06/22.
//

import SwiftUI

struct ColorMultiply_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Multiplicar el color", subtitulo: "Introducción", description: "El multiplicar el color no mezcla los colores. Se pone un filtro de color sobre otra vista.")
            
            HStack(spacing: 10) {
                Color.cyan.frame(width: 100, height: 100)
                Image(systemName: "plus")
                Color.yellow.frame(width: 100, height: 100)
                Image(systemName: "equal")
                Color.cyan.colorMultiply(Color.yellow)
                    .frame(width: 100, height: 100)
            }
            
            HStack(spacing: 10) {
                Image("packers")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image(systemName: "plus")
                Color.green.frame(width: 100, height: 100)
                Image(systemName: "equal")
                Image("packers")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .colorMultiply(.green)
            }
            
            
        }
    }
}

struct ColorMultiply_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ColorMultiply_Intro()
    }
}
