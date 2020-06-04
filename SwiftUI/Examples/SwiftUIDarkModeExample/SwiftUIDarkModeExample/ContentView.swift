//
//  ContentView.swift
//  SwiftUIDarkModeExample
//
//  Created by Edgar Adrián on 03/06/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var colorScheme: ColorScheme = .light
    @State var flag = true
    
    private func changeColorScheme() {
        if flag {
            colorScheme = .light
        } else {
            colorScheme = .dark
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "moon.fill")
                    Text("Dark Mode")
                    .foregroundColor(Color("CustomTextColor"))
                }.font(.title)
                    .navigationBarTitle("Dark Mode")
                Image("CustomImageSet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Button(action: {
                    self.flag.toggle()
                    self.changeColorScheme()
                }) {
                    Text("Change color scheme")
                }
            }.padding()
        }.environment(\.colorScheme, self.colorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
