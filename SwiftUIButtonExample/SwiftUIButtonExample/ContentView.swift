//
//  ContentView.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Adrián on 21/04/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var cont = 0
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
            NSLabelView()
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
