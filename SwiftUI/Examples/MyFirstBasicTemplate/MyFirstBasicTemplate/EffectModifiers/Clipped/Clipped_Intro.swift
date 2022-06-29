//
//  Clipped_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 29/06/22.
//

import SwiftUI

struct Clipped_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Cortado", subtitulo: "Introducción", description: "Cortar cualquier parte de una vista para que no salga del marco.")
            
            HStack {
                VStack {
                    Text("Antes")
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 150, height: 80)
                        .offset(x: 20, y: 20)
                        .border(Color.red)
                }
                
                VStack {
                    Text("Después")
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 150, height: 80)
                        .offset(x: 20, y: 20)
                        .border(Color.red)
                        .clipped()
                }
                
            }
            .padding()
            
            HStack {
                VStack {
                    Text("Antes")
                    Image("packers")
                        .resizable()
                        .frame(width: 150, height: 80)
                        .scaledToFill()
                        .border(Color.red)
                }
                
                VStack {
                    Text("Después")
                    Image("packers")
                        .resizable()
                        .frame(width: 150, height: 80)
                        .scaledToFill()
                        .border(Color.red)
                        .clipped()
                }
                
            }
            .padding()
            
        }
    }
}

struct Clipped_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Clipped_Intro()
    }
}
