//
//  ContentShape_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/06/22.
//

import SwiftUI

struct ContentShape_Intro: View {
    
    @State private var likes = 0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Fígura Contenedora", subtitulo: "Introducción", description: "Para ampliar el área pulsable se utiliza una fígura contenedora")
            
            VStack(spacing: 20) {
                Image(systemName: likes > 0 ? "heart.fill" : "heart")
                    .foregroundColor(likes > 0 ? .blue : .gray)
                    .frame(width: 100, height: 100)
                Text("Dame like (Likes: \(likes))")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.blue, lineWidth: 1)
            )
            .contentShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                self.likes += 1
            }
            
        }
        .font(.title)
    }
}

struct ContentShape_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ContentShape_Intro()
    }
}
