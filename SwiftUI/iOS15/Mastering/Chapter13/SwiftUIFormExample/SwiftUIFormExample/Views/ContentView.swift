//
//  ContentView.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 02/08/22.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedRestaurant: Restaurant?
    
    @State var restaurants = restaurantes
    @State private var showSettings = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurants) { restaurant in
                    RestaurantBasicRow(restaurant: restaurant)
                        .contextMenu {
                            
                            Button(action: {
                                self.checkIn(item: restaurant)
                            }) {
                                HStack {
                                    Text("Check-in")
                                    Image(systemName: "checkmark.seal.fill")
                                }
                            }
                            
                            Button(action: {
                                self.delete(item: restaurant)
                            }) {
                                HStack {
                                    Text("Delete")
                                    Image(systemName: "trash")
                                }
                            }
                            
                            Button(action: {
                                self.setFavorite(item: restaurant)
                                
                            }) {
                                HStack {
                                    Text("Favorite")
                                    Image(systemName: "star")
                                }
                            }
                        }
                        .onTapGesture {
                            self.selectedRestaurant = restaurant
                        }
                }
                .onDelete { (indexSet) in
                    self.restaurants.remove(atOffsets: indexSet)
                }
            }
            
            .navigationBarTitle("Restaurantes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.showSettings = true
                    } label: {
                        Image(systemName: "gear")
                            .font(.title3)
                            .foregroundColor(.black)
                    }

                }
            }
            .sheet(isPresented: $showSettings) {
                SettingView()
            }
            
        }
        
        
    }//var body
    
    private func delete(item restaurant: Restaurant) {
        if let index = self.restaurants.firstIndex(where: { $0.id == restaurant.id }) {
            self.restaurants.remove(at: index)
        }
    }//delete
    
    private func setFavorite(item restaurant: Restaurant) {
        if let index = self.restaurants.firstIndex(where: { $0.id == restaurant.id }) {
            self.restaurants[index].isFavorite.toggle()
        }
    }//setFavorite
    
    private func checkIn(item restaurant: Restaurant) {
        if let index = self.restaurants.firstIndex(where: { $0.id == restaurant.id }) {
            self.restaurants[index].isCheckIn.toggle()
        }
    }//checkIn

}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}