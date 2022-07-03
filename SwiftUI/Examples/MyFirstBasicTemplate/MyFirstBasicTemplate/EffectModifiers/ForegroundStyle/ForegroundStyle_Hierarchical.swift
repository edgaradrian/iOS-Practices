//
//  ForegroundStyle_Hierarchical.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_Hierarchical: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Primer Plano", subtitulo: "Jerárquico", description: "Usar este modificador para aplicar un estilo jerárquico en el contenido de primer plano de una vista.")
            
            Text("Aplicar estilos al Texto")
                .bold()
                .foregroundStyle(.primary)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.quaternary)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .padding(50)
                        .foregroundStyle(.quaternary)
                )
                .overlay(
                    Text("Formas")
                        .bold()
                        .foregroundStyle(.tertiary)
                )
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(.secondary)
                .overlay(
                    Text("Imágenes")
                        .bold()
                )
            
            
        }
    }
}

struct ForegroundStyle_Hierarchical_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Hierarchical()
    }
}
