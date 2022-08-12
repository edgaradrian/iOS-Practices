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
            GeometryReader { g in
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
                .offset(y: showDetail ? -100 : 0)
                .animation(.easeOut(duration: 0.2))
                
                if showDetail {
                    
                    BlankView(color: .black)
                        .opacity(0.5)
                        .onTapGesture {
                            self.showDetail = false
                        }
                    
                    if let selectedRestaurant = selectedRestaurant {
                        RestaurantDetailView(restaurant: selectedRestaurant, isShow: $showDetail)
                            .transition(.move(edge: .bottom))
                    }
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
