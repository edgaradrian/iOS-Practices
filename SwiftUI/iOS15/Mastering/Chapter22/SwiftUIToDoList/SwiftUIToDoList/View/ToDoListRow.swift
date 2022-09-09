//
//  ToDoListRow.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 09/09/22.
//

import SwiftUI

struct ToDoListRow: View {
    
    @ObservedObject var todoItem: ToDoItem
    
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
        }.toggleStyle(CheckBoxStyle())
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
        ToDoListRow(todoItem: ToDoItem(name: "Learning Code", priority: .high, isComplete: true))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}//ToDoListRow_Previews
