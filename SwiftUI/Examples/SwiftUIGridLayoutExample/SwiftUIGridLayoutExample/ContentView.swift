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
    
    //private var gridItemLayout = [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)]
    //private var gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)
    //private var gridItemLayout = [GridItem(.adaptive(minimum: 50))] //adaptive
    //private var sixColumnGrid: [GridItem] = Array(repeating: .init(.flexible()), count: 6)
    private var gridItemLayout = [GridItem(.fixed(100)), GridItem(.fixed(150))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 50, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }//ScrollView
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
