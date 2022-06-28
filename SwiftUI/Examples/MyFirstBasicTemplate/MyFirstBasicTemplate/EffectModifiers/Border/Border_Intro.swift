//
//  Border_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/06/22.
//

import SwiftUI

struct Border_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Borde", subtitulo: "Introducción", description: "Se puede agregar un borde a las vistas")
            
            Text("La anchura del borde por defectro es 1")
                .font(.title)
            
            Button(action: {}) {
                Text("Borde alrededor de un botón")
                    .padding()
            }
            .border(Color.red)
            
            Text("Borde alrededor de un texto")
                .padding()
                .border(Color.red, width: 5)
            
            Image("packers")
                .resizable()
                .frame(width: 60, height: 60)
                .border(Color.green, width: 10)
            
            Circle()
                .frame(width: 70, height: 70)
                .border(Color.red)
         
            DescView(description: "Para fíguras como el círculo, es necesario utilizar stroke o storkeBorder", backColor: .blue)
            
        }
    }
}

struct Border_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Border_Intro()
    }
}
