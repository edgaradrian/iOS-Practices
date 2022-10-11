//
//  SwiftUICoreDateTestApp.swift
//  SwiftUICoreDateTest
//
//  Created by Edgar Adrián on 08/09/22.
//

import SwiftUI

@main
struct SwiftUICoreDateTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
