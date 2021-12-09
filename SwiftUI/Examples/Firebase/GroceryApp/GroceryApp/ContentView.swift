//
//  ContentView.swift
//  GroceryApp
//
//  Created by Edgar Ruiz on 07/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .sheet(isPresented: $isPresented, content: {
            AddStoreView()
        })
        .navigationBarItems(trailing: Button(action: {
            isPresented = true
        }, label: {
            Image(systemName: "plus")
        })
        )
        .navigationTitle("Grocery App")
        .embedInNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
