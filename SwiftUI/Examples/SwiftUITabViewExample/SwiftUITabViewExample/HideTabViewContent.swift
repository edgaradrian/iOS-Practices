//
//  HideTabViewContent.swift
//  SwiftUITabViewExample
//
//  Created by Edgar Ruiz on 04/11/20.
//

import SwiftUI

struct HideTabViewContent: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        NavigationView {
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
            .navigationTitle("My Second TabView")
        
        }//NavigationView
        
        
        
    }//body

}//HideTabViewContent

struct HideTabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        HideTabViewContent()
    }
}
