//
//  ContentView.swift
//  SwiftUIStacksExample
//
//  Created by Edgar Adrián on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Elige")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Tu plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
