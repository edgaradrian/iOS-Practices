//
//  ContentView.swift
//  SwiftUIStateExercise1
//
//  Created by Edgar Ruiz on 05/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 1
    
    var body: some View {
        
        VStack {
            CounterButton(counter: $counter)
            CounterButton(counter: $counter)
            CounterButton(counter: $counter)
        }
        
        
    }//body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
