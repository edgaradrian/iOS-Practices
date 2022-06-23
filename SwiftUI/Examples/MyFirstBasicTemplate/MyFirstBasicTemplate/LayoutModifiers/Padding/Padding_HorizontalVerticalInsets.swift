//
//  Padding_HorizontalVerticalInsets.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Padding_HorizontalVerticalInsets: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Relleno", subtitulo: "Introducción", description: "Se puede controlar la dirección del relleno con otro parámetro para recuadro.")

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
                    .padding(.horizontal)
                    .border(Color.red)
                Spacer()
            }

        }
    }
}

struct Padding_HorizontalVerticalInsets_Previews: PreviewProvider {
    static var previews: some View {
        Padding_HorizontalVerticalInsets()
    }
}
