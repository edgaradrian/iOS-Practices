//
//  ContentView.swift
//  SwiftUImageName
//
//  Created by Edgar Adrián on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("paris")
            
            Image(systemName: "globe")
                .font(.system(size: 100))
                .foregroundStyle(.white)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
