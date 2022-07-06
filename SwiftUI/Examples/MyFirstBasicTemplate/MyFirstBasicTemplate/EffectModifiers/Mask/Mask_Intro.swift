//
//  Mask_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/07/22.
//

import SwiftUI

struct Mask_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Máscara", subtitulo: "Introducción", description: "La máscara hará que sólo se muestre la parte de la figura.")
            
            HStack {
                VStack {
                    Text("La imagen")
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                Image(systemName: "plus")
                    .padding(.top, 50)
                
                VStack {
                    Text("La máscara")
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                }
                
            }
            .padding(.bottom, 50)
            
            
            HStack {
                Image(systemName: "equal")
                    .padding(.top, 50)
                
                VStack {
                    Text("El Resultado")
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .mask(RoundedRectangle(cornerRadius: 20))
                }
            }
            
        }
    }
}

struct Mask_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Mask_Intro()
    }
}
