//
//  ContentView.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .scaleEffect(0.5)
                .foregroundColor(.cyan)
        }
        .onAppear {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
