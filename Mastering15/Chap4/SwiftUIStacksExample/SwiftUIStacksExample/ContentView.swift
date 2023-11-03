//
//  ContentView.swift
//  SwiftUIStacksExample
//
//  Created by Edgar Adrián on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack {
                PricingView(title: "Básico", price: "$89", textColor: .white, bgColor: .cyan)
                
                ZStack {
                    PricingView(title: "Pro", price: "$159", textColor: .black, bgColor: .red)
                    
                    Text("Students option")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 80)
                    
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Elige")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Tu plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
        .padding()
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack {
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundStyle(textColor)
            
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundStyle(textColor)
            
            Text("Por mes")
                .font(.headline)
                .foregroundStyle(textColor)
            
        }
        .padding(40)
        .background(bgColor)
        .clipShape(Circle())
    }
}
