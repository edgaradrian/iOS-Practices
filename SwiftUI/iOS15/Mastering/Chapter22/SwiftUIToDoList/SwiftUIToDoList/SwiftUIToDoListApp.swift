//
//  SwiftUIToDoListApp.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 08/09/22.
//

import SwiftUI

@main
struct SwiftUIToDoListApp: App {
    
    let persistanceController = PersistanceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistanceController.container.viewContext)
        }
    }
}
