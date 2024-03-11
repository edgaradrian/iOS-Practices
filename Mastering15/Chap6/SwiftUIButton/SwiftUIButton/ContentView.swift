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
                    .foregroundStyle(Color.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .background(Color.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.cyan, lineWidth: 4)
                    }
            }
        }
        .padding()
    }
}//ContentView

#Preview {
    ContentView()
}
