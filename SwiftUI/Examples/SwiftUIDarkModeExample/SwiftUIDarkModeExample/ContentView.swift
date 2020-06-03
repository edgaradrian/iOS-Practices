//
//  ContentView.swift
//  SwiftUIDarkModeExample
//
//  Created by Edgar Adrián on 03/06/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "moon.fill")
                Text("Dark Mode")
                .foregroundColor(Color("CustomTextColor"))
            }.font(.title)
                .navigationBarTitle("Dark Mode")
        }.environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
