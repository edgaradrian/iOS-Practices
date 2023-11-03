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
                VStack {
                    
                    Text("Básico")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                    
                    Text("$89")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                    
                    Text("Por mes")
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                }
                .padding(40)
                .background(Color.purple)
                .clipShape(Circle())
                
                VStack {
                    
                    Text("Pro")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundStyle(.black)
                    
                    Text("$159")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundStyle(.black)
                    
                    Text("Por mes")
                        .font(.headline)
                        .foregroundStyle(.black)
                    
                }
                .padding(40)
                .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                .clipShape(Circle())
                
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
