//
//  Padding_Length.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Padding_Length: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Relleno", subtitulo: "Introducción", description: "El relleno agrega espacio extra alrededor de la vista.")

            HStack {
                Spacer()
                Text("Antes")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Spacer()
                Text("Después")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Spacer()
            }
            
            
            HStack {
                Spacer()
                Image("ARod")
                    .resizable()
                    .frame(width: 80, height: 120)
                    .border(Color.red)
                Spacer()
                Image("ARod")
                    .resizable()
                    .frame(width: 80, height: 120)
                    .padding(10)
                    .border(Color.red)
                Spacer()
            }

            DescView(description: "Notar que cambiando el orden del relleno puede cambiar el tamaño de la figura", backColor: .blue)
            
        }
    }
}

struct Padding_Length_Previews: PreviewProvider {
    static var previews: some View {
        Padding_Length()
    }
}
