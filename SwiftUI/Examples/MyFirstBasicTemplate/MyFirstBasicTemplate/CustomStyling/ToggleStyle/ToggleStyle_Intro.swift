//
//  ToggleStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct ToggleStyle_Intro: View {
    
    @State private var toggleState = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Alternador", subtitulo: "Introducción", description: "Aquí los estilos básicos para el Altenador.")
            
            Group {
                Text("Estilo por defecto")
                    .font(.title)
                Toggle("Estilo por defecto", isOn: $toggleState)
                    .toggleStyle(.automatic)
                
                Text("Estilo por defecto")
                    .font(.title)
                Toggle("Estilo por defecto", isOn: $toggleState)
                    .toggleStyle(.switch)
            }
            .padding(.horizontal)
        }
    }
}

struct ToggleStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyle_Intro()
    }
}
