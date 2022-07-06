//
//  Mask_Examples.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/07/22.
//

import SwiftUI

struct Mask_Examples: View {
    var body: some View {
        VStack(spacing: 5) {
            
            HeaderView(titulo: "Máscara", subtitulo: "Ejemplos", description: "usando una máscara con una imagen o una vista existente")
            
            Text("Usando formas")
            Image("packers")
                .resizable()
                .frame(width: 150, height: 100)
                .mask(Circle())

            Text("Usando Texto")
            Image("Lambeau_Field")
                .resizable()
                .frame(width: 250, height: 100)
                .mask(
                    Text("LAMBEAU")
                        .fontWeight(.black)
                        .font(.system(size: 50))
                )
            
            
        }
        .font(.title)
    }
}

struct Mask_Examples_Previews: PreviewProvider {
    static var previews: some View {
        Mask_Examples()
    }
}
