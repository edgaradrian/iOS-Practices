//
//  ContentView.swift
//  SwiftUIProgressRingExample
//
//  Created by Edgar Adrián on 31/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress = 0.0
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
