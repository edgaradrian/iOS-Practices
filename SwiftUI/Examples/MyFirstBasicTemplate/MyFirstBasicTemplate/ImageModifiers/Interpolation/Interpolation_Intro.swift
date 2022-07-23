//
//  Interpolation_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/07/22.
//

import SwiftUI

struct Interpolation_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Interpolación", subtitulo: "Introducción", description: "Usar interpolación para alisar una imagen cuando es redimensionada.")
                
                Image("packers")
                    .resizable()
                    .interpolation(Image.Interpolation.none)
                    .frame(width: 200, height: 200)
                
                Image("packers")
                    .resizable()
                    .interpolation(Image.Interpolation.high)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

struct Interpolation_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Interpolation_Intro()
    }
}
