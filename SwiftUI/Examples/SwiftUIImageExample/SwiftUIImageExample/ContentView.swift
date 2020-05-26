//
//  ContentView.swift
//  SwiftUIImageExample
//
//  Created by Edgar Adrián on 25/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
