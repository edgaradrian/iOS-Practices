//
//  Persistence.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 12/09/22.
//

import CoreData

struct PersistanceController {
    
    static let shared = PersistanceController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "ToDoList")
        
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores { persistanceStoreDescription, error in
            if let error = error {
                fatalError("\(error)\(error.localizedDescription)")
            }
        }
        
    }//init
    
}//PersistanceController

