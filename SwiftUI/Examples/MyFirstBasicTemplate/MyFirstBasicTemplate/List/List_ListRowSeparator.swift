//
//  List_ListRowSeparator.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 01/03/22.
//

import SwiftUI

struct List_ListRowSeparator: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView(titulo: "List", subtitulo: "Hiding ListRowSeparator", description: "Usar el listRowSeparator para especificar si los separadores deben mostrarse o no.")
            
            List {
                Text("Row 1")
                Text("Row 2")
                    .listRowSeparator(.hidden)
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                Text("Row 6")
                Text("Row 7")
            }
        }
        .font(.title)
    }
}

struct List_ListRowSeparator_Previews: PreviewProvider {
    static var previews: some View {
        List_ListRowSeparator()
    }
}
