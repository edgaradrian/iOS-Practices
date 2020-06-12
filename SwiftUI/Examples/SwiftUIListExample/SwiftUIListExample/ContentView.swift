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
            ForEach(restaurants) { restaurant in
                BigImageRow(restaurant: restaurant)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SimpleImageRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}
