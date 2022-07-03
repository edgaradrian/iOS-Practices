//
//  ForegroundStyle_HierarchicalColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_HierarchicalColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de primer plano", subtitulo: "Color Jerárquico", description: "Poner un color en una vista madre y usar el estilo herárquico en sus hijas.")
            
            VStack(spacing: 20) {
                Image(systemName: "paintpalette.fill")
                    .foregroundStyle(.primary)
                
                Text("Título - Primario")
                    .font(.largeTitle)
                
                Text("Subtítulo - Secundario")
                    .font(.body)
                    .foregroundStyle(.secondary)
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.tertiary)
                    .padding()
                    .overlay(
                        Text("Terciario")
                    )
                
                Text("Fondo - Cuaternario")
                    .foregroundStyle(.quaternary)
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .foregroundStyle(.quaternary)
            )
            .padding()
            .foregroundStyle(.cyan)
            
            
        }
        .font(.title)
    }
}

struct ForegroundStyle_HierarchicalColor_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_HierarchicalColor()
    }
}
