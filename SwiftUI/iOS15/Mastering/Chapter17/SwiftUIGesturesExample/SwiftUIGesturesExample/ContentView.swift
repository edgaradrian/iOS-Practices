//
//  ContentView.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 08/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wasTapped = false
    @GestureState private var longPressTap = false
    
    var body: some View {
        VStack {
            Image(systemName: "star.circle.fill")
                .font(.system(size: 300))
                .opacity(longPressTap ? 0.3 : 1)
                .scaleEffect(wasTapped ? 0.5 : 1)
                .animation(.easeInOut, value: wasTapped)
                .foregroundColor(.yellow)
                .gesture(
                    LongPressGesture(minimumDuration: 1.0)
                        .updating($longPressTap, body: { currentState, state, transaction in
                            state = currentState
                        })
                        .onEnded({ _ in
                            self.wasTapped.toggle()
                        })
            )
            
            if self.wasTapped {
                Text("¡Pulsado!")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
