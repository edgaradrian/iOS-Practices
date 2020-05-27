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
        Image("Moscow")
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
        .clipped()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
