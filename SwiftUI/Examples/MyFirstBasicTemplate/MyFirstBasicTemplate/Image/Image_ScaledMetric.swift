//
//  Image_ScaledMetric.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_ScaledMetric: View {
    @ScaledMetric var size: CGFloat = 32
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Imagen", subtitulo: "Métrica a escala", description: "Usar la propiedad de ScaledMetric para ajustar el tamaño de una imagen en relación de un tamaño de texto dinámico.")
            
            HStack {
                
                Image("SwiftUI_blue_small")
                    .resizable()
                    .frame(width: size, height: size)
                Text("Crece con el texto.")
                    .font(.largeTitle)
                
            }
            
        }
        .font(.title)
    }
}

struct Image_ScaledMetric_Previews: PreviewProvider {
    static var previews: some View {
        Image_ScaledMetric()
    }
}
