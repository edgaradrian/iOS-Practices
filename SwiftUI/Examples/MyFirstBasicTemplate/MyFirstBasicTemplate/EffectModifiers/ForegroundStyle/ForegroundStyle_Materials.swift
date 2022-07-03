//
//  ForegroundStyle_Materials.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_Materials: View {
    var body: some View {
        ZStack {
            
            Color.cyan
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                    
                HeaderView(titulo: "Estilo de Primer Plano", subtitulo: "Materiales", description: "Usar el modificador para aplicar un material al contenido de primer plano de una vista.")
                
                Text("Aplicar estilos al Texto")
                    .bold()
                    .foregroundStyle(.thickMaterial)
                
                RoundedRectangle(cornerRadius: 20)
                    .padding()
                    .foregroundStyle(.ultraThinMaterial)
                    .overlay(
                        Text("Fíguras")
                            .bold()
                    )
                
                Image(systemName: "paintpalette.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(.regularMaterial)
                    .overlay(
                        Text("Imágenes")
                            .bold()
                    )
                
                
            }
            .font(.title)
            
        }
    }
}

struct ForegroundStyle_Materials_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Materials()
    }
}
