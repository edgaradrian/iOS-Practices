//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Edgar Ruiz on 03/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Edgar Adrián")
            CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple", author: "Bruce Wayne")
            CardView(image: "flutter-app", category: "iOS", heading: "Building a Complex with Flutter", author: "Edgar Ruiz")
            CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Adrián")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
