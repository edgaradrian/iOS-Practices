//
//  ContentView.swift
//  SwiftUImageName
//
//  Created by Edgar Adrián on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.system(size: 100))
                .foregroundStyle(.blue)
                .shadow(color: .gray, radius: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
