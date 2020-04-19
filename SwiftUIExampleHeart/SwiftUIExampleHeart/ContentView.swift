//
//  ContentView.swift
//  SwiftUIExampleHeart
//
//  Created by Edgar Ruiz on 18/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var colorToggle = false
    @State var sizeToggle = false
    
    var body: some View {
        
        ZStack {
            
            Color(colorToggle ? .blue : .yellow)
                .edgesIgnoringSafeArea(.all)
            
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(colorToggle ? .yellow : .blue)
                .scaleEffect(sizeToggle ? 1.5 : 2.0)
                .animation(.interactiveSpring())
                .onTapGesture {
                    self.colorToggle.toggle()
            }
            .onLongPressGesture {
                self.sizeToggle.toggle()
            }
        }.statusBar(hidden: true)
        
        
        
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
