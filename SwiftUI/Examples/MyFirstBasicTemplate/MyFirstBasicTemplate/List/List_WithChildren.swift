//
//  List_WithChildren.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct Parent: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Parent]?
}

struct List_WithChildren: View {
    
    var parents = [
        Parent(name: "Adrián", children: [Parent(name: "Abril")]),
        Parent(name: "Astrid", children: [Parent(name: "Abril"), Parent(name: "Alissa")]),
        Parent(name: "Edgar", children: [Parent(name: "Abril"), Parent(name: "Alissa"), Parent(name: "Pavel")])
    ]
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "Children", description: "Se puede ordenar información permitiendo a una lista (List) mostrar en un estilo esquema")
            
            List(parents, children: \.children) { parent in
                Text("\(parent.name)")
            }
            
        }
        .font(.title)
        
    }
}

struct List_WithChildren_Previews: PreviewProvider {
    static var previews: some View {
        List_WithChildren()
    }
}
