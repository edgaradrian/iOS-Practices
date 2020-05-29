//
//  ContentView.swift
//  SwiftUIBusinessCard
//
//  Created by Edgar Ruiz on 29/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            Text("Edgar Adrián")
                .font(.custom("ChelseaMarket-Regular", size: 30))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
