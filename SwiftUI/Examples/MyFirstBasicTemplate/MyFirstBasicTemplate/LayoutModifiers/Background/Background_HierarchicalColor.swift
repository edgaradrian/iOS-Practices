//
//  Background_HierarchicalColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_HierarchicalColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Fondo", subtitulo: "Jerarquía con colores", description: "Agregar un color usando foregroundStyle a la vista padre y a la vista hijo con los estilo jerarquícos.")
            
            Image(systemName: "02.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
            
            Image(systemName: "03.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
            
            Image(systemName: "04.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
            
        }
        .font(.title)
        .foregroundStyle(.blue)
    }
}

struct Background_HierarchicalColor_Previews: PreviewProvider {
    static var previews: some View {
        Background_HierarchicalColor()
    }
}
