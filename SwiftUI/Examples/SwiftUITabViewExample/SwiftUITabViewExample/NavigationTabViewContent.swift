//
//  NavigationTabViewContent.swift
//  SwiftUITabViewExample
//
//  Created by Edgar Ruiz on 04/11/20.
//

import SwiftUI

struct NavigationTabViewContent: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                List(1...10, id: \.self) { index in
                    NavigationLink (destination: Text("Showing Item #\(index)"),
                                    label: {
                                        Text("Item \(index)")
                                            .font(.system(size: 20, weight: .bold, design: .rounded))
                                    })
                }
                .navigationTitle("Nav View Embed")
            }
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
    }
}

struct NavigationTabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabViewContent()
    }
}
