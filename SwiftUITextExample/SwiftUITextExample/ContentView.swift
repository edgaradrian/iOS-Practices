//
//  ContentView.swift
//  SwiftUITextExample
//
//  Created by Edgar Ruiz on 19/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
    
            Color.black
            
            VStack {
                Text("Episode VII")
                .fontWeight(.heavy)
                .font(.custom("Monaco", size: 25))
                    .foregroundColor(.yellow)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                    .padding()
            
                Text("HEIR TO THE EMPIRE")
                    .fontWeight(.heavy)
                    .font(.custom("Monaco", size: 30))
                    .foregroundColor(.yellow)
                
                VStack() {
                    Text("The Rebel victory is hollow.")
                    Text("Although Darth Vader and")
                    Text("Emperor Palpatinehave been")
                    Text("defeated, and the Imperial")
                    Text("Army has been driven into")
                    Text("obscurity, the GALACTIC NEW")
                    Text("REPUBLIC is perilously weak.")
                }.font(.custom("Monaco", size: 25))
                    .foregroundColor(.yellow)
                .lineLimit(1)
                    .padding(.top)
                
            
            }.padding()
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
            
        }.edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    
    }
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
