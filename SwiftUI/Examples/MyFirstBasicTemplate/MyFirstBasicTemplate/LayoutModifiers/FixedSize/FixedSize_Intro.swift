//
//  FixedSize_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 10/06/22.
//

import SwiftUI

struct FixedSize_Intro: View {
    var body: some View {
        ScrollView {
            VStack {
                
                HeaderView(titulo: "Fixed Size", subtitulo: "Introducción", description: "El modificador de ajuste de tamaño permite al contenido expandirse hasta pasar los límites de su vista contenedor (padre)")
                
                Text("El texto abajo se quedará dentro de los límites del marco en que fue colocado.")
                
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Image("packers")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    
                    Text("Bienvenido a Green Bay")
                        .italic()
                        .bold()
                        .shadow(color: .white, radius: 1, x: 1, y: 1)
                        .padding()
                        .frame(width: 200, height: 200, alignment: .leading)
                        .border(Color.blue)
                    
                }
                
                Text("Si se agrega el modificador fixedSize, esto permitirá que el texto se extienda y pase los límites del marco que lo contiene.")
                
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Image("packers")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    Text("Bienvenidos a Green Bay")
                        .italic()
                        .bold()
                        .font(.system(size: 40))
                        .shadow(color: .white, radius: 1, x: 1, y: 1)
                        .padding()
                        .fixedSize()
                        .frame(width: 200, height: 200)
                        .border(Color.blue)
                    
                }
                
            }
        }
    }
}

struct FixedSize_Intro_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize_Intro()
    }
}
