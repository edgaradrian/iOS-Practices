//
//  Button_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct Button_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Button")
                .font(.largeTitle)
            Text("Introducción")
                .font(.title)
                .foregroundColor(.gray)
            Text("Si deseas mostrar el estilo por defecto en un botón cuando pasas una cadena como primer parámetro")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.yellow)
                .padding()
                .background(
                    Color.blue
                )
            
            Button("Default Button style") {
                
            }
            
            Text("Puedes personalizar el texto mostrado en un boton")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.yellow)
                .padding()
                .background(
                    Color.blue
                )
            
            Button(action: {
                
            }) {
                Text("Headline Font")
                    .font(.headline)
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Foreground Color")
                    .foregroundColor(.red)
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Thin Font Weight")
                    .fontWeight(.thin)
            }
            
            
        }
        .font(.title)
    }
}

struct Button_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Button_Intro()
    }
}
