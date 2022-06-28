//
//  Blur_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/06/22.
//

import SwiftUI

struct Blur_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Desenfoque", subtitulo: "Introducción", description: "se puede desenfocar cualquier vista y especificar el grado de desenfoque deseado.")
            
            HStack {
                Image("packers")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .blur(radius: 1)
                    .overlay(
                        Text("1")
                            .bold()
                            .foregroundColor(.red)
                    )
                
                Image("packers")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .blur(radius: 10)
                    .overlay(
                        Text("10")
                            .bold()
                            .foregroundColor(.red)
                    )
                
                Image("packers")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .blur(radius: 50)
                    .overlay(
                        Text("50")
                            .bold()
                            .foregroundColor(.red)
                    )
                
            }
            
            
            HStack {
                
                Color.pink
                    .frame(width: 60, height: 60)
                    .blur(radius: 10)
                    .overlay(
                        Text("10")
                            .bold()
                    )
                
                Color.pink
                    .frame(width: 60, height: 60)
                    .blur(radius: 20)
                    .overlay(
                        Text("20")
                            .bold()
                    )
                
                Color.pink
                    .frame(width: 60, height: 60)
                    .blur(radius: 50)
                    .overlay(
                        Text("50")
                            .bold()
                    )
                
            }
            
        }
    }
}

struct Blur_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Blur_Intro()
    }
}
