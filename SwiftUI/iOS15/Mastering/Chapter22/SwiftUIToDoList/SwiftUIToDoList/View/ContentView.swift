//
//  ContentView.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 08/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(entity: ToDoItem.entity(),
                  sortDescriptors: [ NSSortDescriptor(keyPath: \ToDoItem.priorityNum, ascending: false) ])
    
    var todoItems: FetchedResults<ToDoItem>
    @State private var newItemName: String = ""
    @State private var newItemPriority: Priority = .normal
    @State private var showNewTask = false
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Text("Cosas por hacer")
                        .font(.system(size: 40, weight: .black, design: .rounded))
                        
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                        
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.cyan)
                    }
                }
                .padding()
                
                List {
                    ForEach(todoItems) { todoItem in
                        ToDoListRow(todoItem: todoItem)
                    }
                    .onDelete(perform: deleteTask)
                }
                
            }
            .rotation3DEffect(Angle(degrees: showNewTask ? 5 : 0), axis: (x: 1, y: 0, z: 0))
            .offset(y: showNewTask ? -50 : 0)
            .animation(.easeOut, value: showNewTask)
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            
            if todoItems.count == 0 {
                NoDataView()
            }//todoItems.count == 0
            
            if showNewTask {
                BackgroundView(bgColor: .black)
                    .opacity(0.5)
                    .onTapGesture {
                        self.showNewTask = false
                    }
                
                NewToDoView(isShow: $showNewTask, name: "", priority: .normal)
                    .transition(.move(edge: .bottom))
                    .animation(.interpolatingSpring(stiffness: 200.0, damping: 25.0, initialVelocity: 10.0), value: showNewTask)
            }//showNewTask
            
        }
        
    }//body
    
    
    private func deleteTask(indexSet: IndexSet) {
        
        for index in indexSet {
            let itemToDelete = todoItems[index]
            context.delete(itemToDelete)
        }
        
        DispatchQueue.main.async {
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
        
    }//deleteTask
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistanceController.preview.container.viewContext)
    }
}//ContentView_Previews
