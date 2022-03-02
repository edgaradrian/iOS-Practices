//
//  List_BIndingWithinList.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 01/03/22.
//

import SwiftUI


struct ToDoItem: Identifiable {
    let id = UUID()
    var task = ""
    var priority = false
    var done = false
}//ToDoItem

struct List_BIndingWithinList: View {
    @State private var items = [
        ToDoItem(task: "Ir a la Conasupo", done: false),
        ToDoItem(task: "Lavar las sillas", done: true),
        ToDoItem(task: "Trabajar", done: false)
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "Binding Within", description: "Se puede ligar una lista con controles de información directsmente")
            
            List($items) { $item in
                HStack {
                    TextField("Task", text: $item.task)
                    Toggle("Done?", isOn: $item.done)
                        .labelsHidden()
                }
            }
        }
        .font(.title)
    }
}

struct List_BIndingWithinList_Previews: PreviewProvider {
    static var previews: some View {
        List_BIndingWithinList()
    }
}
