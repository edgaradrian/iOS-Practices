//
//  ContentView.swift
//  SwiftUIListExample
//
//  Created by Edgar Ruiz on 11/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let navBarAppearence = UINavigationBarAppearance()
        navBarAppearence.largeTitleTextAttributes = [.foregroundColor: UIColor.systemTeal, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        navBarAppearence.titleTextAttributes = [.foregroundColor: UIColor.systemTeal, .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
        UINavigationBar.appearance().standardAppearance = navBarAppearence
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearence
        UINavigationBar.appearance().compactAppearance = navBarAppearence
        
        navBarAppearence.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"), transitionMaskImage: UIImage(systemName: "arrow.turn.up.left"))
        UINavigationBar.appearance().tintColor = .black
        
        
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurants) { restaurant in
                    NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                        SimpleImageRow(restaurant: restaurant)
                    }
                }
            }
            .navigationBarTitle("Restaurants", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SimpleImageRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}
