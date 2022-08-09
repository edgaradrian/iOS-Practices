//
//  ContentView2.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 09/08/22.
//

import SwiftUI

struct ContentView2: View {
    
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 80))
            .offset(x: dragOffset.width, y: dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.yellow)
            .gesture(
                DragGesture().updating($dragOffset, body: { value, state, transaction in
                    state = value.translation
                })
            )
    }//body
    
    
}//ContentView2

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
