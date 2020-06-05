//
//  ContentView.swift
//  SwiftUIStateExample
//
//  Created by Edgar Ruiz on 05/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
