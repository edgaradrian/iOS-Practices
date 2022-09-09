//
//  ToDoItem.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 08/09/22.
//

import Foundation

enum Priority: Int {
    case low = 0
    case normal = 1
    case high = 2
}//Priority

class ToDoItem: ObservableObject, Identifiable {
    
    var id = UUID()
    @Published var name = ""
    @Published var priority: Priority = .normal
    @Published var isComplete = false
    
    init(name: String, priority: Priority = .normal, isComplete: Bool = false) {
        self.name = name
        self.priority = priority
        self.isComplete = isComplete
    }//init
    
}//ToDoItem
