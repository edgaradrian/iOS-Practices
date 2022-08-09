//
//  ContentView2.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 09/08/22.
//

import SwiftUI

struct ContentView2: View {
    
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 80))
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.yellow)
            .gesture(
                DragGesture().updating($dragOffset, body: { value, state, transaction in
                    state = value.translation
                })
                .onEnded({ value in
                    self.position.height += value.translation.height
                    self.position.width += value.translation.width
                })
            )
    }//body
    
    
}//ContentView2

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
