//
//  Image_ForegroundStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct Image_ForegroundStyle: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Imagen - Simbolos", subtitulo: "ForegroundStyle", description: "El modificador foregroundStyle se utiliza para especificar diferentes colores en un simbolo multicolor.")
                .layoutPriority(1)
            
            List {
                
                Label("Cyan", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.cyan)
                
                Label("Cyan, Red", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.cyan, .red)
                
                Label("Cyan, Red, Yellow", systemImage: "arrow.uturn.backward")
                    .foregroundStyle(.cyan, .red, .yellow)
                
                Label("Cyan, Red, Yellow", systemImage: "arrow.uturn.backward.circle")
                    .foregroundStyle(.cyan, .red, .yellow)
                
                Label("Cyan, Red, Yellow", systemImage: "arrow.uturn.backward.circle.fill")
                    .foregroundStyle(.cyan, .red, .yellow)
                
                
            }
            
            DescView(description: "Consejo: La mayoría de los simbolos utilizan dos colores. El segundo color podría ser secundario o terciario", backColor: .blue)
            
        }
        .font(.title)
    }
}

struct Image_ForegroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        Image_ForegroundStyle()
    }
}
