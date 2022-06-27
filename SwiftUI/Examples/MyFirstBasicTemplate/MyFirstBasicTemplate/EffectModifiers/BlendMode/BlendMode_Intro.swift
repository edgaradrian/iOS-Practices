//
//  BlendMode_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/06/22.
//

import SwiftUI

struct BlendMode_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Modo Mezcla", subtitulo: "Introducción", description: "Con el modificador de mezcla pueden combinarse las capas")
            
            Text("Modo Mezcla: Ninguno")
                .font(.title)
            HStack(spacing: 60) {
                ZStack {
                    CyanRectangle()
                    PinkRectangle()
                        .offset(x: 20, y: 20)
                }
                ZStack {
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 100)
                    PinkRectangle()
                        .offset(x: 20, y: 20)
                }
            }
            .padding(.bottom, 40)
            
            Text("Modo Mezcla: colorBurn")
                .font(.title)
            HStack(spacing: 60) {
                ZStack {
                    CyanRectangle()
                    PinkRectangle()
                        .offset(x: 20, y: 20)
                        .blendMode(.colorBurn)
                }
                ZStack {
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 100)
                    PinkRectangle()
                        .offset(x: 20, y: 20)
                        .blendMode(.colorBurn)
                }
            }
            .padding(.bottom, 40)
            
        }
    }
}

struct BlendMode_Intro_Previews: PreviewProvider {
    static var previews: some View {
        BlendMode_Intro()
    }
}
