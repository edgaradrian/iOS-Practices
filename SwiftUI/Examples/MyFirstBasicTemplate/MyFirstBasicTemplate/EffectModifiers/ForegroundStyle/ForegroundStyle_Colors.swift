//
//  ForegroundStyle_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/07/22.
//

import SwiftUI

struct ForegroundStyle_Colors: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Primer Plano", subtitulo: "Colores", description: "Este modificador aplica un color al contenido de primer plano de una vista.")
            
            Text("Aplicar estilos al Texto")
                .bold()
                .foregroundStyle(Color.cyan)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(Color.yellow)
                .overlay(
                    Text("Fíguras")
                        .bold()
                )
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(Color.red)
                .overlay(
                    Text("Imágenes")
                )
            
            
        }
        .font(.title)
    }
}

struct ForegroundStyle_Colors_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Colors()
    }
}
