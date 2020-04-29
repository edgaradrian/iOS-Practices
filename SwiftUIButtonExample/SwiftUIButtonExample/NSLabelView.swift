//
//  NSLabelView.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Adrián on 29/04/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct NSLabelView: View {
    @State var cont = 0
    var body: some View {
        
        return VStack {
            
            Button(action: {
                self.cont += 1
            }, label: {
                Text("Tap")
                    .fontWeight(.heavy)
                    .font(.custom("Monaco", size: 50))
                }).padding()
                .foregroundColor(.yellow)
                .background(Color.blue)
                
                        
            if cont > 0 {
                Text("Taps \(cont)")
                .padding()
                    .foregroundColor(.purple)
            } else {
                Text("Zero Taps")
                .padding()
            }
            
        }
    }
}//NSLabelView
