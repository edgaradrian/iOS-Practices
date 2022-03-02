//
//  List_ListRowSeparatorTint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_ListRowSeparatorTint: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "ListRowSeparatorTint", description: "Usa el listRowSeparatorTint para modificar el color del separador.")
            
            List {
                Text("Row 1")
                Text("Cyan")
                    .listRowSeparatorTint(.cyan)
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                Text("Row 6")
                Text("Row 7")
                Text("Azul en la cima")
                    .listRowSeparatorTint(.blue, edges: .top)
                Text("Row 9")
                Text("Row 10")
            }
            
        }
        .font(.title)
    }
}

struct List_ListRowSeparatorTint_Previews: PreviewProvider {
    static var previews: some View {
        List_ListRowSeparatorTint()
    }
}
