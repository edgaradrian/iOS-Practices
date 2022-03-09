//
//  ProgressView_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct ProgressView_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            
            HeaderView(titulo: "ProgressView", subtitulo: "Introducción", description: "Usar ProgressView para mostrar que una actividad está sucediendo. Si no se le pasa ningún valor, mostrará un indeterminado spinner")
            
            ProgressView()
            
            DescView(description: "Se puede agregar una etiqueta también", backColor: .cyan)
            
            ProgressView("Cargando...")
                .font(Font.system(.title2, design: .monospaced).weight(.bold))
            
        }
        .font(.title)
    }
}

struct ProgressView_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_Intro()
    }
}
