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
                .frame(width: 300)
                .clipShape(Circle())
                .overlay {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 30))
                        .foregroundStyle(.red)
                        .opacity(0.5)
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
