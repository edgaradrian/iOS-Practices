//
//  List_ListItemTint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_ListItemTint: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "List", subtitulo: "ListItemTint", description: "ListItemTint es usado para plicar un color a la filas pero sólo trabaja con imágenes y etiqueta (labels)")
                .layoutPriority(1)
            
            Text("Using listItemTint")
            
            List {
                Label("Aprender Unity", systemImage: "cube.transparent")
                    .listItemTint(Color.red)
                Button("Button") { }
                .listItemTint(Color.red)
                HStack {
                    Image(systemName: "cube.transparent")
                    Text("SF Image and Text")
                }
                .listItemTint(Color.red)
            }
            .listItemTint(Color.cyan)
            
            Text("Usando foregroundColor")
            List {
                Label("Aprender Unity", systemImage: "cube.transparent")
                    .listItemTint(Color.red)
                Button("Button") { }
                HStack {
                    Image(systemName: "cube.transparent")
                    Text("SF Image and Text")
                }
            }
            .foregroundColor(Color.red)
            
            
        }
        .font(.title)
    }
}

struct List_ListItemTint_Previews: PreviewProvider {
    static var previews: some View {
        List_ListItemTint()
    }
}
