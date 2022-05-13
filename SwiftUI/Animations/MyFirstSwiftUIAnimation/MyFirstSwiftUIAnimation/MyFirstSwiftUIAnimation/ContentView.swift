//
//  ContentView.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var colour = Color.cyan
    @State private var currentOffset = 0
    
    var body: some View {
        ZStack {
            Circle()
                .scaleEffect(0.5)
                .foregroundColor(colours[currentOffset])
                .animation(.default, value: self.currentOffset)
        }
        .onAppear {
            
            for index in 1..<colours.count {
                delay(seconds: Double(index)) {
                    self.currentOffset = index
                }
            }
            
        }
    }
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let colours: [Color] = [
    Color.cyan,
    Color.blue,
    Color.yellow,
    Color.purple,
    Color.pink,
    Color.cyan
]
