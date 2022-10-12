//
//  FilteredList.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 12/10/22.
//

import SwiftUI

struct FilteredList: View {
    
    @Environment(\.managedObjectContext) var context
    
    @Binding var searchText: String
    
    var fetchRequest: FetchRequest<ToDoItem>
    var todoItems: FetchedResults<ToDoItem> {
        fetchRequest.wrappedValue
    }
    
    init(_ searchText: Binding<String>) {
        self._searchText = searchText
        
        let predicate = searchText.wrappedValue.isEmpty ? NSPredicate(value: true) : NSPredicate(format: "name CONTAINS[c] %@", searchText.wrappedValue)
        
        self.fetchRequest = FetchRequest(entity: ToDoItem.entity(),
                                         sortDescriptors: [ NSSortDescriptor(keyPath: \ToDoItem.priorityNum, ascending: false) ],
                                         predicate: predicate,
                                         animation: .default)
    }
    
    var body: some View {
        
        ZStack {
            List {
                
                ForEach(todoItems) { todoItem in
                    ToDoListRow(todoItem: todoItem)
                }
                .onDelete(perform: deleteTask)
                
            }
            .listStyle(.plain)
            
            if todoItems.count == 0 {
                NoDataView()
            }
        }
        
        
    }
    
    private func deleteTask(indexSet: IndexSet) {
        for index in indexSet {
            let itemToDelete = todoItems[index]
            context.delete(itemToDelete)
        }
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }//deleteTask
    
}//FilteredList

struct FilteredList_Previews: PreviewProvider {
    static var previews: some View {
        FilteredList(.constant(""))
    }
}
