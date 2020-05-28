//
//  ContentView.swift
//  SwiftUIExampleObservedNumberInt
//
//  Created by Edgar Adrián on 27/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomInt = RandomInt()
    
    var body: some View {
        
        VStack {
            Text("\(randomInt.number)")
            .fontWeight(.heavy)
            .font(.system(size: 40))
            
            HStack(alignment: .center, spacing: 20) {
                
                Button(action: {
                    self.randomInt.startTimer()
                }) {
                    Text("Start Timer")
                }.foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                
                Button(action: {
                    self.randomInt.stopTimer()
                }) {
                    Text("Stop Timer")
                }.foregroundColor(.white)
                .padding()
                    .background(Color.red)
                .cornerRadius(10)
                
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
