//
//  ContentView.swift
//  SwiftUIScrollViewHorizontal
//
//  Created by Edgar Ruiz on 04/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Thuesday, June 4")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                }
                .layoutPriority(100)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Edgar Adrián")
                    .frame(width: 300)
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple", author: "Bruce Wayne")
                    .frame(width: 300)
                CardView(image: "flutter-app", category: "iOS", heading: "Building a Complex with Flutter", author: "Edgar Ruiz")
                    .frame(width: 300)
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Adrián")
                    .frame(width:300)
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
