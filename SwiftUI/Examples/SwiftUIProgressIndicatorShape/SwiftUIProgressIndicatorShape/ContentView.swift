//
//  ContentView.swift
//  SwiftUIProgressIndicatorShape
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 20)
                .frame(width: 300, height: 300)
            
            Circle()
                .trim(from: 0, to: 0.85)
                .stroke(purpleGradient, lineWidth: 20)
                .frame(width: 300, height: 300)
                .overlay(
                    VStack {
                        Text("85")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(.systemGray))
                        Text("Complete")
                            .font(.system(.body, design: .rounded))
                            .bold()
                            .foregroundColor(Color(.systemGray))
                    }
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
