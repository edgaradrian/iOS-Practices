//
//  OutlineGroup_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct OutlineGroup_Intro: View {
    
    var parents = [
        Parent(name: "Adrián", children: [Parent(name: "Abril")]),
        Parent(name: "Astrid", children: [Parent(name: "Abril"), Parent(name: "Alissa")]),
        Parent(name: "Edgar", children: [Parent(name: "Abril"), Parent(name: "Alissa"), Parent(name: "Pavel")])
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "OutlineGroup", subtitulo: "Introducción", description: "OutlineGroup es muy similar a List con la excepción que su contenedor no se desplaza.")
            
            OutlineGroup(parents, children: \.children) { parent in
                HStack {
                    Image(systemName: "person.circle")
                    Text("\(parent.name)")
                    Spacer()
                }
            }
            .padding(.horizontal)
            .accentColor(.cyan)
            
        }
        .font(.title)
    }
}

struct OutlineGroup_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroup_Intro()
    }
}
