//
//  Image_FromAssetCatalog.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/04/22.
//

import SwiftUI

struct Image_FromAssetCatalog: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Image", subtitulo: "From Asset Catalog", description: "Por defecto, las imágenes mantienen sus tamaño original.")
            
            Image("SwiftUI_blue_small")
            
            DescView(description: "Se puede cambiar el tamaño utilizando en modificador resizable", backColor: .blue)
            
            Image("SwiftUI_blue_small")
                .resizable()
            
            DescView(description: "Por defecto, resizable permite expandirse en todo el tamaño disponible", backColor: .blue)
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
        .minimumScaleFactor(0.5)
    }
}

struct Image_FromAssetCatalog_Previews: PreviewProvider {
    static var previews: some View {
        Image_FromAssetCatalog()
    }
}
