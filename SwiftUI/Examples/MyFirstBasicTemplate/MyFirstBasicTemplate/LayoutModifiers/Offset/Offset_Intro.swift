//
//  Offset_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/06/22.
//

import SwiftUI

struct Offset_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Compensado", subtitulo: "Introducción", description: "Usando el modificador de compensado para mover una vista de su posición inicial usando las coordenadas X y Y.")
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
                        .offset(x: -20, y: -20)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
                        .offset(x: 20, y: 20)
                    
                }
                .padding()
                
                Text("Notar que el contenido es el que se mueve y no la vista en sí.")
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 100)
                    .shadow(radius: 5)
                    .offset(x: 40, y: 40)
                    .border(Color.red)
                
                
            }
        }
    }
}

struct Offset_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Offset_Intro()
    }
}
