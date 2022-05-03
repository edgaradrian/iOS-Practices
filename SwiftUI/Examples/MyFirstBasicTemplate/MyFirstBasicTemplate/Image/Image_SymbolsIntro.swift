//
//  Image_SymbolsIntro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Imagen", subtitulo: "Desde Símbolos", description: "Se cargan las imágenes de \"símbolos\" al usar el parámetro systemName: al inicial la imagen.")
            
            Text("Aquí algunos ejemplos de simbbolos:")
            
            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                Image(systemName: "cloud.sun.rain.fill")
                Image(systemName: "cloud.sun.bolt.fill")
            }
            
            Text("Tip: La app SF Symbols tiene más de 1500 símbolos disponibles.")
            
            DescView(description: "Poner el color con el modificador foregroundColor.", backColor: .blue)
            
            HStack(spacing: 40) {
                Image(systemName: "cloud.sun.fill")
                    .foregroundColor(.red)
                Image(systemName: "cloud.sun.rain.fill")
                    .foregroundColor(.orange)
                Image(systemName: "cloud.sun.bolt.fill")
                    .foregroundColor(.yellow)
            }
            
        }
        .font(.title)
    }
}

struct Image_SymbolsIntro_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolsIntro()
    }
}
