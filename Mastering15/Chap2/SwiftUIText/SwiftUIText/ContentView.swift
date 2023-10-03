//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Edgar Adrián on 30/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Stay hungry")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40))
                .foregroundStyle(.cyan)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
