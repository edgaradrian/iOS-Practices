//
//  NewToDoView.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 09/09/22.
//

import SwiftUI

struct NewToDoView: View {
    
    @Binding var isShow: Bool
    @Binding var todoItems: [ToDoItem]
    
    @State var name: String
    @State var priority: Priority
    @State var isEditing = false
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Agregar tarea")
                        .font(.system(.title, design: .rounded))
                        .bold()
                    
                    Spacer()
                    
                    Button(action: {
                        self.isShow = false
                        
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                
                TextField("Ingresa la descripción", text: $name, onEditingChanged: { (editingChanged) in
                    
                    self.isEditing = editingChanged
                    
                })
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.bottom)
                
                Text("Prioridad")
                    .font(.system(.subheadline, design: .rounded))
                    .padding(.bottom)
                
                HStack {
                    Text("Alta")
                        .font(.system(.headline, design: .rounded))
                        .padding(10)
                        .background(priority == .high ? Color.red : Color(.systemGray4))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .onTapGesture {
                            self.priority = .high
                        }
                    
                    Text("Media")
                        .font(.system(.headline, design: .rounded))
                        .padding(10)
                        .background(priority == .normal ? Color.orange : Color(.systemGray4))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .onTapGesture {
                            self.priority = .normal
                        }
                    
                    Text("Baja")
                        .font(.system(.headline, design: .rounded))
                        .padding(10)
                        .background(priority == .low ? Color.green : Color(.systemGray4))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .onTapGesture {
                            self.priority = .low
                        }
                }
                .padding(.bottom, 30)
                
                Button(action: {
                    
                    if self.name.trimmingCharacters(in: .whitespaces) == "" {
                        return
                    }
                    
                    self.isShow = false
                    self.addTask(name: self.name, priority: self.priority)
                    
                }) {
                    Text("Guardar")
                        .font(.system(.headline, design: .rounded))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                .padding(.bottom)
                
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10, antialiased: true)
            .offset(y: isEditing ? -320 : 0)
        }
        .edgesIgnoringSafeArea(.bottom)
    }//body
    
    private func addTask(name: String, priority: Priority, isComplete: Bool = false) {
        
        let task = ToDoItem(name: name, priority: priority, isComplete: isComplete)
        todoItems.append(task)
    }//addTask
    
}//NewToDoView

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(isShow: .constant(true), todoItems: .constant([]), name: "Learning Code", priority: .high)
    }
}//NewToDoView_Previews
