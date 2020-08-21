//
//  ContentView.swift
//  SwiftUIGridLayoutExample
//
//  Created by Edgar Adrián on 20/08/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct ContentView: View {
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    
    private var colors: [Color] = [.yellow, .purple, .green]
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            ContentView()
        } else {
            // Fallback on earlier versions
        }
    }
}
