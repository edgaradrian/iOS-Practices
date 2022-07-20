//
//  ListStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct ListStyle_Intro: View {
    var body: some View {
        GeometryReader { g in
            ScrollView {
                VStack(spacing: 20) {
                    
                    HeaderView(titulo: "Estilo de lista", subtitulo: "Introducción", description: "El estilo de lista predeterminado es DefaultListStyle")
                    
                    List {
                        Text("Este es el estilo por defecto")
                        Text("Línea Dos")
                    }
                    .frame(width: g.size.width - 5, height: g.size.height - 580, alignment: .center)
                    .listStyle(DefaultListStyle())
                    
                    DescView(description: "El estilo GroupedListStyle está disponible de iOS", backColor: .blue)
                    
                    List {
                        Text("Este es un estilo de grupo de lista")
                        Text("Línea Dos")
                    }
                    .frame(width: g.size.width - 5, height: g.size.height - 200, alignment: .center)
                    .listStyle(GroupedListStyle())
                    
                }
                .font(.title)
            }
        }
    }
}

struct ListStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ListStyle_Intro()
    }
}
