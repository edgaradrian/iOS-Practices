//
//  ContentView.swift
//  SwiftUITabViewExample
//
//  Created by Edgar Ruiz on 03/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            TabView(selection: $selection) {
                Text("My First TabView")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(1)
            }
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
            .accentColor(.pink)
            
            Button(action: {
                selection = (selection + 1) % 2
            }) {
                Text("Next")
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(10)
                    .padding()
            }
            
            
        }//ZStack
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
