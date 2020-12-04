//
//  ContentView.swift
//  HelloMVVM
//
//  Created by Edgar Adrián on 02/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            
            Text(counterVM.isPremium ? "PREMIUM" : "")
                .foregroundColor(.yellow)
                .frame(width: 200, height: 100)
                .font(.largeTitle)
            
            Text("\(counterVM.value)")
                .font(.title)
            
            Button(action: {
                self.counterVM.increment()
            }) {
                Text("Increment")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
