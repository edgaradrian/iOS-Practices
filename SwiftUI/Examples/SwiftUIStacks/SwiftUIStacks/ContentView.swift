//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Edgar Adrián on 28/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HeaderView()
            
            HStack {
                VStack {
                    Text("Basic")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    
                    Text("$5")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("per month")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(40)
                .background(Color.blue)
                .cornerRadius(10)
            
            
                VStack {
                    
                    Text("Pro")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    
                    Text("$15")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("per month")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(40)
                .background(Color.red)
                .cornerRadius(10)
            
            
            
            }
        .padding()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}
