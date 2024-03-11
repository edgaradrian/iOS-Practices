//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Edgar Adrián on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
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
            
            Button {
                print("Botón de borrado pulsado.")
            } label: {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Borrar")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            }

        }
        .padding()
    }
}//ContentView

#Preview {
    ContentView()
}
