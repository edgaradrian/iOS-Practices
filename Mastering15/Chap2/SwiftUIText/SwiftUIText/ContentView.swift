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
            Text("Did you ever think about the number of things that had to happen for me to get to know you? But everything happened, and it got me here. What does that mean?")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40))
                .foregroundStyle(.cyan)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
