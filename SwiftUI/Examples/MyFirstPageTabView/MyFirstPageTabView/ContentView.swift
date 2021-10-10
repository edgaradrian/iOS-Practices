//
//  ContentView.swift
//  MyFirstPageTabView
//
//  Created by Edgar Ruiz on 09/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("January")
            Text("February")
            Text("March")
            Text("April")
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
