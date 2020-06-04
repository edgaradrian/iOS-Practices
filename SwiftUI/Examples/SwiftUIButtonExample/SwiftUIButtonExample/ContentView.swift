//
//  ContentView.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Ruiz on 04/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Delete button tapped!")
        }) {
            Image(systemName: "trash")
                .padding()
                .background(Color.red)
                .clipShape(Circle())
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
