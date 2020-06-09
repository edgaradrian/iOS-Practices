//
//  ContentView.swift
//  SwiftUILoadingIndicatorAnimations
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.7)
            .stroke(Color.blue, lineWidth: 8)
            .frame(width: 100, height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
