//
//  RenderMode_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/07/22.
//

import SwiftUI

struct RenderMode_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Modo de renderizado", subtitulo: "Introducción", description: "El modo renderizado pondrá más opacas partes de la imagen")
                
                HStack {
                    Spacer()
                    Text("Foto")
                    Spacer()
                    Text("Vector")
                    Spacer()
                }
                .font(.largeTitle)
                
                Text("Modo Renderizado: Original")
                HStack(spacing: 80) {
                    Image("packers")
                        .renderingMode(.original)
                    Image(systemName: "bolt.fill")
                        .renderingMode(.original)
                        .font(.system(size: 90))
                }
                
                Text("Modo Renderizado: Templado")
                HStack(spacing: 80) {
                    Image("packers")
                        .renderingMode(.template)
                    Image(systemName: "bolt.fill")
                        .renderingMode(.template)
                        .font(.system(size: 90))
                }
                
                Text("Modo Renderizado: Templado con color")
                HStack(spacing: 80) {
                    Image("packers")
                        .renderingMode(.template)
                    Image(systemName: "bolt.fill")
                        .renderingMode(.template)
                        .font(.system(size: 90))
                }
                .foregroundColor(.cyan)
                
            }
        }
    }
}

struct RenderMode_Intro_Previews: PreviewProvider {
    static var previews: some View {
        RenderMode_Intro()
    }
}
