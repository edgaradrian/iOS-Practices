//
//  ContentView.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var colour = Color.cyan
    
    var body: some View {
        ZStack {
            Circle()
                .scaleEffect(0.5)
                .foregroundColor(colour)
                .animation(.default, value: colour)
        }
        .onAppear {
            delay(seconds: 2) {
                self.colour = .yellow
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
