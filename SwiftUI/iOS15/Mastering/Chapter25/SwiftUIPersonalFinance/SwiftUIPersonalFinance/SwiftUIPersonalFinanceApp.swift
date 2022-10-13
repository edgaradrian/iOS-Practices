//
//  SwiftUIPersonalFinanceApp.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import SwiftUI

@main
struct SwiftUIPersonalFinanceApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
