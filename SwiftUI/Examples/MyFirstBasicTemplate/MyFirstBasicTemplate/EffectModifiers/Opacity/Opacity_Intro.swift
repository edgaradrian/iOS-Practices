//
//  Opacity_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/07/22.
//

import SwiftUI

struct Opacity_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Opacidad", subtitulo: "Introducción", description: "Ajustar la opacidad en vistas para hacerlas menos sólidas y más transparentes.")
                
                Text("Colores")
                HStack {
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(0)
                        .overlay(
                            Text("0")
                    )
                    
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(0.2)
                        .overlay(
                            Text("0.2")
                    )
                    
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(0.4)
                        .overlay(
                            Text("0.4")
                    )
                    
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(0.6)
                        .overlay(
                            Text("0.6")
                    )
                    
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(0.8)
                        .overlay(
                            Text("0.8")
                    )
                    
                    Color
                        .blue
                        .frame(width: 60, height: 60)
                        .opacity(1)
                        .overlay(
                            Text("1")
                    )
                }
                
                
                Text("Formas")
                
                HStack {
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(0)
                        .overlay(
                            Text("0")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(0.2)
                        .overlay(
                            Text("0.2")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(0.4)
                        .overlay(
                            Text("0.4")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(0.6)
                        .overlay(
                            Text("0.6")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(0.8)
                        .overlay(
                            Text("0.8")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .opacity(1)
                        .overlay(
                            Text("1.0")
                        )
                }
                
                Text("Imágenes")
                
                HStack {
                    
                    VStack(spacing: 2) {
                        Text("0")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(0)
                    }
                    
                    VStack(spacing: 2) {
                        Text("0.2")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(0.2)
                    }
                    
                    VStack(spacing: 2) {
                        Text("0.4")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(0.4)
                    }
                    
                    VStack(spacing: 2) {
                        Text("0.6")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(0.6)
                    }
                    
                    VStack(spacing: 2) {
                        Text("0.8")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(0.8)
                    }
                    
                    VStack(spacing: 2) {
                        Text("1")
                            .font(.body)
                        Image("packers")
                            .resizable()
                            .frame(width: 60, height: 60)
                        .opacity(1)
                    }
                    
                }
                
            }
            .font(.title)
        }
    }
}

struct Opacity_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Opacity_Intro()
    }
}
