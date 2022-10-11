//
//  Persistence.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 12/09/22.
//

import CoreData

struct PersistanceController {
    
    static let shared = PersistanceController()
    
    static var preview: PersistanceController = {
        
        let result = PersistanceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for index in 0..<10 {
            let newItem = ToDoItem(context: viewContext)
            newItem.id = UUID()
            newItem.name = "Por hacer #\(index)"
            newItem.priority = .normal
            newItem.isComplete = false
        }
        
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Error \(nsError), \(nsError.userInfo)")
        }
        
        return result
        
    }()
    
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

