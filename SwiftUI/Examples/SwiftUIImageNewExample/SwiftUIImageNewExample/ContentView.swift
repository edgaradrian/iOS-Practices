//
//  ContentView.swift
//  SwiftUIImageNewExample
//
//  Created by Edgar Adrián on 27/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Chimalli")
        .resizable()
            .aspectRatio(contentMode: .fit)
        .overlay(
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.4)
            .overlay(
                
                Text("Chimalhuacan")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .frame(width: 300)
                
            )
            
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
