//
//  Divider_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Divider_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Divider", subtitulo: "Introducción", description: "Los divisores son fáciles de implementar.")
            
            Text("Divisor horizontal")
            
            Divider()
            Image(systemName: "arrow.left.and.right")
                .font(.system(size: 60))
            Divider()
            
            Text("Es horizontal porque está en dentro de un VStack. Será vertical si está dentro de un HStack")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(
                    Color.blue
                )
            
            HStack {
                Text("Divisor Vertical")
                Divider()
                Image(systemName: "arrow.up.and.down")
                    .font(.system(size: 60))
                Divider()
            }
            
        }
        .font(.title)
    }
}

struct Divider_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Divider_Intro()
    }
}
