//
//  ForegroundStyle_Semantic.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_Semantic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Estilo de primer plano", subtitulo: "Semántica", description: "Usa este modificador para un estilo semántico al contenido de primer plano de una vista.")
            
            Text("Aplicar Estilos al Texto")
                .bold()
                .foregroundStyle(.selection)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.foreground)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .padding(50)
                        .foregroundStyle(.background)
                )
                .overlay(
                    Text("Formas")
                        .bold()
                        .foregroundStyle(.selection)
                )
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(.foreground)
                .overlay(
                    Text("Imágenes")
                        .bold()
                        .foregroundStyle(.background)
                )
            
        }
        .font(.title)
    }
}

struct ForegroundStyle_Semantic_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Semantic()
    }
}
