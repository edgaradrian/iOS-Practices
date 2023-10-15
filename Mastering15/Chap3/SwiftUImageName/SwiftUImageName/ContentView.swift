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
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .overlay {
                    Color.black
                        .opacity(0.4)
                        .overlay {
                            Text("París")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                }
            
            VStack {
                Image(systemName: "globe")
                    .font(.system(size: 100))
                    .foregroundStyle(.yellow)
                    .opacity(0.5)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
