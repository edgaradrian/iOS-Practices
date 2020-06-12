//
//  ContentView.swift
//  SwiftUIListExample
//
//  Created by Edgar Ruiz on 11/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1...5, id: \.self) { index in
                Text("\(index)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
