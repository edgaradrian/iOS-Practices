//
//  LayoutPriority_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/06/22.
//

import SwiftUI

struct LayoutPriority_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Prioridad de Disposición", subtitulo: "Introducción", description: "Usar la prioridad de disposición para decirle a la vista padre, cuál de sus vistas hijas tendrá prioridad al asignar espacio.")
                .layoutPriority(1)
 
            Text("Ninguna prioridad de disposición.")
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("ARod")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .mask(Circle())
                    Text("Aaron Rodgers")
                        .font(.title)
                }
                Text("Green Bay Packers. Green Bay Packers. Green Bay PAckers,")
                    .font(.body)
            }
            .padding()
            .foregroundColor(.white)
            .background(
                Color.blue.cornerRadius(8)
            )
            .padding(.horizontal)
            
            Text("Prioridad de disposición 2 usada")
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("ARod")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .mask(Circle())
                    Text("Aaron Rodgers")
                        .font(.title)
                }
                Text("Green Bay Packers. Green Bay Packers. Green Bay Packers.")
                    .font(.body)
            }
            .layoutPriority(2)
            .padding()
            .foregroundColor(.white)
            .background(
                Color.blue.cornerRadius(8)
            )
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct LayoutPriority_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority_Intro()
    }
}
