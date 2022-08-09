//
//  ContentView3.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 09/08/22.
//

import SwiftUI

struct ContentView3: View {
    
    @GestureState private var isPressed = false
    
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 80))
            .opacity(isPressed ? 0.5 : 1.0)
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.yellow)
            .gesture(
                
                LongPressGesture(minimumDuration: 1.0)
                    .updating($isPressed, body: { currentState, state, transaction in
                        state = currentState
                    })
                    .sequenced(before: DragGesture())
                    .updating($dragOffset, body: { value, state, transaction in
                        switch value {
                        case .first(true):
                            print("Pulsando")
                        case .second(true, let drag):
                            state = drag?.translation ?? .zero
                        default:
                            break
                        }
                    })
                    .onEnded({ value in
                        
                        guard case .second(true, let drag?) = value else {
                            return
                        }
                        
                        self.position.height += drag.translation.height
                        self.position.width += drag.translation.width
                        
                    })
                
                
            )
    }
}//ContentView3

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
