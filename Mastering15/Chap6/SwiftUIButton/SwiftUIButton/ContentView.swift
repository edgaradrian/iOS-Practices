//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Edgar Adrián on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Fui pulsado")
            } label: {
                Text("Púlsame")
                    .padding()
                    .foregroundStyle(Color.cyan)
                    .font(.title2)
                    .border(Color.cyan, width: 4)
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
