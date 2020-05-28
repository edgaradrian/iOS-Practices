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
                PlanView(title: "Basic", price: "$4", bgColor: Color.blue)
                ZStack {
                    PlanView(title: "Pro", price: "$10", bgColor: Color.red)
                    
                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.yellow)
                        .offset(x: 0, y: 90)
                    
                }
            
            }
            .padding(.horizontal)
            
            
            
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

struct PlanView: View {
    
    var title: String
    var price: String
    var bgColor: Color
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            
            Text(price)
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text("per month")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
