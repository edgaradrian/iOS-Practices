//
//  List_SwipeActions.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_SwipeActions: View {
    @State private var items = [
        ToDoItem(task: "Ir a la Conasupo", done: false),
        ToDoItem(task: "Lavar las sillas", done: true),
        ToDoItem(task: "Trapear", done: false)
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "SwipeActions", description: "Usa swipeActions para exponer funcionalidad adicional en repetidos artículos de una lista.")
            
            List {
                ForEach($items) { $item in
                    Text(item.task)
                        .strikethrough(item.done)
                        .swipeActions {
                            Button {
                                item.done.toggle()
                            } label: {
                                Image(systemName: item.done ? "arrow.uturn.backward.square" : "checkmark.square")
                            }
                            .tint(item.done ? .green : .red)
                        }
                }
            }
            
        }
        .font(.title)
    }
}

struct List_SwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        List_SwipeActions()
    }
}
