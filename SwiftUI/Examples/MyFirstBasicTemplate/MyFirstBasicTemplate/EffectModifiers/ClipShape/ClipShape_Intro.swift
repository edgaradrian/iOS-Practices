//
//  ClipShape_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 29/06/22.
//

import SwiftUI

struct ClipShape_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Forma de cortar", subtitulo: "Introducción", description: "Sólo muestra la parte de la vista que la figura cubre")
            
            Text("Original")
            Image("packers")
                .resizable()
                .frame(width: 150, height: 80)
            
            HStack(spacing: 60) {
                Image("packers")
                    .resizable()
                    .frame(width: 150, height: 80)
                    .clipShape(Circle())
                
                Image("packers")
                    .resizable()
                    .frame(width: 150, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            
            Button(action: {}) {
                Text("Explorar")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
            .frame(width: 200, height: 75)
            .background(
                Color.blue
                    .clipShape(Capsule())
            )
            
            
            
            
        }
    }
}

struct ClipShape_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ClipShape_Intro()
    }
}
