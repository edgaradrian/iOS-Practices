//
//  GroceryAppApp.swift
//  GroceryApp
//
//  Created by Edgar Ruiz on 07/10/21.
//

import SwiftUI
import Firebase

@main
struct GroceryAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
