//
//  ContentView.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 08/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wasTapped = false
    
    var body: some View {
        VStack {
            Image(systemName: "star.circle.fill")
                .font(.system(size: 300))
                .foregroundColor(.yellow)
                .gesture(
                    TapGesture()
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
