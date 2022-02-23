//
//  ControlGroup_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct ControlGroup_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ControlGroup", subtitulo: "Introducción", description: "Usa una vista ControlGroup para agrupar controles relacionados")
            
            ControlGroup {
                Button("Hello") { }
                Button(action: {}) {
                    Image(systemName: "gearshape.fill")
                }
            }
            
            DescView(description: "Puedes poner el estilo por defecto en navegar", backColor: .yellow)
            ControlGroup {
                Button("Hello") { }
                Button(action: {}) {
                    Image(systemName: "gearshape.fill")
                }
            }
            .controlGroupStyle(.navigation)
            
            
        }
        .font(.title)
    }
}

struct ControlGroup_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroup_Intro()
    }
}
