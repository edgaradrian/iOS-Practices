//
//  ContentView.swift
//  HelloMVVM
//
//  Created by Edgar Adrián on 02/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("PREMIUM")
                .frame(width: 200, height: 100)
                .font(.largeTitle)
            
            Text("0")
                .font(.title)
            
            Button(action: {
                
            }) {
                Text("Increment")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
