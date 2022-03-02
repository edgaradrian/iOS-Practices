//
//  List_SwipeActions_Options.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_SwipeActions_Options: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "List", subtitulo: "SwipeActions - Options", description: "Puedes especificar que lado de la fila puede tener la función adicional al deslizar la fila")
                .layoutPriority(1)
            
            List {
                ForEach(0 ..< 3) { item in
                    Text("Item \(item)")
                        .swipeActions(allowsFullSwipe: false) {
                            Button { } label: {
                                Image(systemName: "checkmark.square")
                            }
                            .tint(.green)
                        }
                }
            }
            
            List {
                ForEach(3 ..< 6) { item in
                    Text("Item \(item)")
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button { } label: {
                                Image(systemName: "flag")
                            }
                            .tint(.cyan)
                        }
                }
            }
            
        }
        .font(.title)
    }
}

struct List_SwipeActions_Options_Previews: PreviewProvider {
    static var previews: some View {
        List_SwipeActions_Options()
    }
}
