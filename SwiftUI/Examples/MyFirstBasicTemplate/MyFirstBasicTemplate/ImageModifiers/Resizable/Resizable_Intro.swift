//
//  Resizable_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 25/07/22.
//

import SwiftUI

struct Resizable_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Redimensionado", subtitulo: "Introducción", description: "No se puede redimensionar una imagen con sólo cambiar su marco.")
                
                Image("packers")
                    .frame(width: 200, height: 200)
                    .border(Color.blue)
                
                DescView(description: "Se tiene que redimensionar primero", backColor: .blue)
                
                Image("packers")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .border(Color.blue)
            }
        }
    }
}

struct Resizable_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Resizable_Intro()
    }
}
