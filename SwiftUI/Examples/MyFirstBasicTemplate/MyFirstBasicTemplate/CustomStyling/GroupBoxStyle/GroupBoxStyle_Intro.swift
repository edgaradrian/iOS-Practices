//
//  GroupBoxStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct GroupBoxStyle_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Estilo de Caja Grupal", subtitulo: "Introducción", description: "Usando el modificador groupBoxStyle se puede rear un estilo personalizado para todas las cajas grupales.")
                
                Text("Sin estilo")
                
                GroupBox(label: Text("Nombre de usuario")) {
                    Text("SwiftUI rifa")
                }
                
                Divider()
                
                Text("Caja Grupal Personalizada")
                
                GroupBox {
                    Text("SwiftUI rifa")
                } label: {
                    Text("Nombre de usuario")
                }
                .groupBoxStyle(CenteredGroupBoxStyle(backColor: .cyan))

                
            }
            .font(.title)
        }
    }
}

struct GroupBoxStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxStyle_Intro()
    }
}
