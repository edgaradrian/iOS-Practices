//
//  List_ListSectionSeparatorTint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_ListSectionSeparatorTint: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "ListSectionSeparatorTint", description: "Usa la listSectionSeparatorTint para modificar el color del separador.")
            
            List {
                Section {
                    Text("Fila 1")
                    Text("Fila 2")
                    Text("Fila 3")
                    Text("Fila 4")
                } header: {
                    Text("Sección 1")
                }
                .listSectionSeparatorTint(.red)
                
                Section {
                    Text("Fila 5")
                    Text("Fila 6")
                    Text("Fila 7")
                } header: {
                    Text("Sección 2")
                }
                .listSectionSeparatorTint(.cyan, edges: .bottom)
                
                
            }
            .listStyle(.plain)
        }
        .font(.title)
    }
}

struct List_ListSectionSeparatorTint_Previews: PreviewProvider {
    static var previews: some View {
        List_ListSectionSeparatorTint()
    }
}
