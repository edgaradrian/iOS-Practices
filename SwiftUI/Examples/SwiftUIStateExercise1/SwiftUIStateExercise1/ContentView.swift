//
//  ContentView.swift
//  SwiftUIStateExercise1
//
//  Created by Edgar Ruiz on 05/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 1
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .overlay(
                    Text("\(self.counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
            )
        }
    }//body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
