//
//  Background_Hierarchical.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_Hierarchical: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Fondo", subtitulo: "Jerarquía", description: "Usar estilos jerarquícos con el modificador de fondo para crear niveles de profundidad.")
            
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
    }
}

struct Background_Hierarchical_Previews: PreviewProvider {
    static var previews: some View {
        Background_Hierarchical()
    }
}
