//
//  ForegroundStyle_Gradient.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_Gradient: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Primer Plano", subtitulo: "Degradados", description: "Usa este modificador para aplicar un degradado al contenido de primer plano de una vista.")
            
            Text("Aplicar Estilos a un Texto")
                .bold()
                .foregroundStyle(linearGradient)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(linearGradient)
                .overlay(
                    Text("Formas")
                        .bold()
                )
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(linearGradient)
                .overlay(
                    Text("Imágenes")
                        .bold()
                )
            
        }
        .font(.title)
    }
}

struct ForegroundStyle_Gradient_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Gradient()
    }
}
