//
//  Frame_FixedSizes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/06/22.
//

import SwiftUI

struct Frame_FixedSizes: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Marco", subtitulo: "Tamaño ajustado", description: "Se utiliza el modificador de frame para ajustar tamaños.")
                
                Text("Tamaño original")
                Image("packers")
                
                Text("Colocando ancho y alto")
                HStack {
                    Image("packers")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 75, height: 75)
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                }
                
                Text("Se puede combinar relación de aspecto con marco")
                Image("packers")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(height: 100)
                
                Text("Se les puede especificar a lar imágenes a un marco específico.")
                Image("packers")
                    .resizable()
                    .frame(width: 75, height: 50)
                
            }
            .font(.title)
        }
    }
}

struct Frame_FixedSizes_Previews: PreviewProvider {
    static var previews: some View {
        Frame_FixedSizes()
    }
}
