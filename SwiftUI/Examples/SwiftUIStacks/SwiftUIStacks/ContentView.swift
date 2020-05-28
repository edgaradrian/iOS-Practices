//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Edgar Adrián on 28/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}
