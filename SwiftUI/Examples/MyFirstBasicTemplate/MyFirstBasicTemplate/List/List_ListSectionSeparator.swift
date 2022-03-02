//
//  List_ListSectionSeparator.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_ListSectionSeparator: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "ListSectionSeparator", description: "Usa el listSectionSeparator para especificar si los separadores de sección deben mostrarse o no")
            
            List {
                
                Section {
                    Text("Row 1")
                    Text("Row 2")
                    Text("Row 3")
                    Text("Row 4")
                } header: {
                    Text("Section 1")
                }
                .listSectionSeparator(.hidden)
            
                Section {
                    Text("Row 5")
                    Text("Row 6")
                    Text("Row 7")
                    Text("Row 8")
                } header: {
                    Text("Section 2")
                }
            
            }
            .listStyle(.plain)
            
        }
        .font(.title)
    }
}

struct List_ListSectionSeparator_Previews: PreviewProvider {
    static var previews: some View {
        List_ListSectionSeparator()
    }
}
