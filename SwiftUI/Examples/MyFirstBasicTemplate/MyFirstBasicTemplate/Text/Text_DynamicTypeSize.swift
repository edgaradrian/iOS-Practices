//
//  Text_DynamicTypeSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 31/03/22.
//

import SwiftUI

struct Text_DynamicTypeSize: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "DynamicTypeSize", description: "Poner un rango de tamaños para el cambio de tamaño de texto.")
            
            Text("Mi cabecero")
                .font(.largeTitle)
            
            Text("Mi cabecero limitado")
                .font(.largeTitle)
                .dynamicTypeSize(.large ... .xLarge)
            
        }
        .font(.title)
    }
}

struct Text_DynamicTypeSize_Previews: PreviewProvider {
    static var previews: some View {
        Text_DynamicTypeSize()
    }
}
