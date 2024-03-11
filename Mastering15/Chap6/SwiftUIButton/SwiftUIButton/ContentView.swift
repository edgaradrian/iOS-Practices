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
                    .background(Color.cyan)
                    .foregroundStyle(Color.white)
                    .font(.title2)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
