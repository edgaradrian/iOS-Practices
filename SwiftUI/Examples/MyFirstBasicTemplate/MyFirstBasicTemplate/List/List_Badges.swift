//
//  List_Badges.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_Badges: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "Badge", description: "Usando badge en las filas de una lista, se agrega el número al final de la fila")
            
            Label("Count", systemImage: "number.circle")
                .badge(5)
            
            List {
                Text("Fila 0")
                    .badge(0)
                Text("Fila 1")
                    .badge(1)
                    .foregroundColor(.cyan)
                Text("Fila 2")
                    .badge(2)
                Text("Fila 3")
                    .badge(3)
                    .font(.title3.weight(.bold))
                Text("Fila 4")
                    .badge(4)
            }
            
        }
        .font(.title)
    }
}

struct List_Badges_Previews: PreviewProvider {
    static var previews: some View {
        List_Badges()
    }
}
