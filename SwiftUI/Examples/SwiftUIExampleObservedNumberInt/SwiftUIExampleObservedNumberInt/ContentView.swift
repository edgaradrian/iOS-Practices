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
        Text("\(randomInt.number)")
            .fontWeight(.heavy)
            .font(.system(size: 40))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
