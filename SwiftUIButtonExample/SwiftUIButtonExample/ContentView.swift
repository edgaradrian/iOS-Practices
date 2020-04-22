//
//  ContentView.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Adrián on 21/04/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var cont = 0
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
            
            VStack {
                
                Button(action: {
                    self.cont += 1
                }, label: {
                    Text("Tap")
                        .fontWeight(.heavy)
                        .font(.custom("Monaco", size: 50))
                    }).padding()
                    .foregroundColor(.yellow)
                    .background(Color.blue)
                    
                            
                if cont > 0 {
                    Text("Taps \(cont)")
                    .padding()
                        .foregroundColor(.purple)
                } else {
                    Text("Zero Taps")
                    .padding()
                }
                
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
