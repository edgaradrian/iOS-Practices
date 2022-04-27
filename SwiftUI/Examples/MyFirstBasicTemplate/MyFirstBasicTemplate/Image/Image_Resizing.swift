//
//  Image_Resizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/04/22.
//

import SwiftUI

struct Image_Resizing: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Imagen", subtitulo: "Redimensionando", description: "Con el modificador resizable, se puede ajustar el marco para redimensionar.")
            
            Image("SwiftUI_blue_small")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("Sin Escalamiento")
            Image("SwiftUI_blue_small")
                .resizable()
                .frame(width: 100, height: 150)
                .background(Color.primary)
         
            
            Text("Escalamiento para adaptarse")
            Image("SwiftUI_blue_small")
                .resizable()
                .scaledToFit()
                .background(Color.primary)
            
        }
        .font(.title)
        .minimumScaleFactor(0.5)
    }
}

struct Image_Resizing_Previews: PreviewProvider {
    static var previews: some View {
        Image_Resizing()
    }
}
