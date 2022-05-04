//
//  Image_SymbolRenderingMode.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct Image_SymbolRenderingMode: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Imagen - Simbolos", subtitulo: "SymbolRenderingMode", description: "El modificador symbolRenderingMode da un mayor control sobre los SF Symbols dibujados.")
            
            Label("Monochrome", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.monochrome)
            
            Label("Multicolor", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.multicolor)
            
            Label("Hierarchical", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.hierarchical)
            
            Label("Palette", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.cyan, .red.opacity(0.7))
            
            
        }
        .font(.title)
    }
}

struct Image_SymbolRenderingMode_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolRenderingMode()
    }
}
