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
            
            VStack {
                Image(systemName: "globe")
                    .font(.system(size: 100))
                    .foregroundStyle(.yellow)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
