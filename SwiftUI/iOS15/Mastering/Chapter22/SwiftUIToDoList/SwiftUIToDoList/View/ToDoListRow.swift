//
//  ToDoListRow.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 09/09/22.
//

import SwiftUI

struct ToDoListRow: View {
    
    @ObservedObject var todoItem: ToDoItem
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        Toggle(isOn: self.$todoItem.isComplete) {
            HStack {
                Text(self.todoItem.name)
                    .strikethrough(self.todoItem.isComplete, color: .black)
                    .bold()
                    .animation(.default)
                
                Spacer()
                
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(self.color(for: self.todoItem.priority))
            }
        }
        .toggleStyle(CheckBoxStyle())
        .onChange(of: todoItem) { _ in
            if self.context.hasChanges {
                try? self.context.save()
            }
        }
    }//body
    
    private func color(for priority: Priority) -> Color {
        switch priority {
        case .high: return .red
        case .normal: return .yellow
        case .low: return .green
        }
    }//color
    
}//ToDoListRow

struct ToDoListRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListRow(todoItem: ToDoItem())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}//ToDoListRow_Previews
