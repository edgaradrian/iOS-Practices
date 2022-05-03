//
//  Image_SymbolSizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_SymbolSizing: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Imagen - Símbolos", subtitulo: "Modificadores de Tamaño", description: "Se pueden escalar una imagen con el modificador imageScale")

            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun").imageScale(.large)
                Image(systemName: "thermometer.sun").imageScale(.medium)
                Image(systemName: "thermometer.sun").imageScale(.small)
            }

            DescView(description: "También se puede cambiar el tamaño con el modificador de fuente.", backColor: .blue)
            
            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun").font(.largeTitle)
                Image(systemName: "thermometer.sun")
                    .font(.title)
                Image(systemName: "thermometer.sun").font(.body)
                Image(systemName: "thermometer.sun").font(.caption)
            }
            
            DescView(description: "EL tamaño de fuente lo hace también", backColor: .blue)
            
            HStack(spacing: 40) {
                Image(systemName: "thermometer.sun").font(.system(size: 60))
                Image(systemName: "thermometer.sun").font(.system(size: 50))
                Image(systemName: "thermometer.sun").font(.system(size: 40))
                Image(systemName: "thermometer.sun").font(.system(size: 30))
            }
            
        }
        .font(.title)
    }
}

struct Image_SymbolSizing_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolSizing()
    }
}
