//
//  ContentView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail = false
    @State private var selectedRestaurant: Restaurant?
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(restaurants) { restaurant in
                        BasicImageRow(restaurant: restaurant)
                            .onTapGesture {
                                self.showDetail = true
                                self.selectedRestaurant = restaurant
                            }
                    }
                }
                .listStyle(.plain)
                .navigationBarTitle("Restaurantes")
            }
            
            if showDetail {
                if let selectedRestaurant = selectedRestaurant {
                    RestaurantDetailView(restaurant: selectedRestaurant)
                        .transition(.move(edge: .bottom))
                }
            }
        }
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
