//
//  ContentView.swift
//  SwiftUIStateExercise1
//
//  Created by Edgar Ruiz on 05/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter1 = 1
    @State private var counter2 = 1
    @State private var counter3 = 1
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("\(counter1 + counter2 + counter3)")
                .font(.system(size: 150, weight: .bold, design: .rounded))
            
            Spacer()
            
            HStack {
                CounterButton(counter: $counter1, color: .yellow)
                CounterButton(counter: $counter2, color: .green)
                CounterButton(counter: $counter3, color: .red)
            }
            
            Spacer()
            
        }
        
        
    }//body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
