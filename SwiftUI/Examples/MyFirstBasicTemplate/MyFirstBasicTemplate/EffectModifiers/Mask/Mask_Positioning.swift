//
//  Mask_Positioning.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/07/22.
//

import SwiftUI

struct Mask_Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Máscara", subtitulo: "Posicionamiento", description: "Por defecto, la máscara está en el centro, pero con un mnodificador .offset puede cambiarse de posición.")
            
            Text("Predeterminado")
            Image("Lambeau_Field")
                .resizable()
                .frame(width: 200, height: 150)
                .mask(
                    Image(systemName: "tv.fill")
                        .font(.system(size: 75))
                )
            
            Text("Reposicionando")
            Image("Lambeau_Field")
                .resizable()
                .frame(width: 200, height: 150)
                .mask(
                    Image(systemName: "tv.fill")
                        .offset(x: 60)
                        .font(.system(size: 75))
                )
            
        }
        .font(.title)
    }
}

struct Mask_Positioning_Previews: PreviewProvider {
    static var previews: some View {
        Mask_Positioning()
    }
}
