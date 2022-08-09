//
//  ContentView.swift
//  SwiftUIListActionSheetExample
//
//  Created by Edgar Adrián on 06/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                   Restaurant(name: "Homei", image: "homei"),
                   Restaurant(name: "Teakha", image: "teakha"),
                   Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                   Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                   Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                   Restaurant(name: "Po's Atelier", image: "posatelier"),
                   Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                   Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                   Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                   Restaurant(name: "Homei", image: "upstate"),
                   Restaurant(name: "Traif", image: "traif"),
                   Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                   Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                   Restaurant(name: "Five Leaves", image: "fiveleaves"),
                   Restaurant(name: "Cafe Lore", image: "cafelore"),
                   Restaurant(name: "Confessional", image: "confessional"),
                   Restaurant(name: "Barrafina", image: "barrafina"),
                   Restaurant(name: "Donostia", image: "donostia"),
                   Restaurant(name: "Royal Oak", image: "royaloak"),
                   Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    @State private var showActionSheet = false
    
    @State private var selectedRestaurant: Restaurant?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurants) { restaurant in
                    BasicRowImage(restaurant: restaurant)
                        .contextMenu {
                            
                            Button(action: {
                                self.delete(restaurant: restaurant)
                            }) {
                                HStack {
                                    Text("Borrar")
                                    Image(systemName: "trash")
                                }
                            }
                            
                            Button(action: {
                                self.setFavorite(restaurant: restaurant)
                            }) {
                                HStack {
                                    Text("Favorito")
                                    Image(systemName: "star")
                                }
                            }
                            
                        }
                        .onTapGesture {
                            self.showActionSheet.toggle()
                            self.selectedRestaurant = restaurant
                        }
                        .confirmationDialog(Text("¿Qué deseas hacer?"), isPresented: $showActionSheet) {
                         
                            Button("Marcar como favorito", role: .none) {
                                if let selectedRestaurant = self.selectedRestaurant {
                                    self.setFavorite(restaurant: selectedRestaurant)
                                }
                            }//Favorito
                            
                            Button("Borrar", role: .destructive) {
                                if let selectedRestaurant = self.selectedRestaurant {
                                    self.delete(restaurant: selectedRestaurant)
                                }
                            }//Borrar
                            
                            Button("Cancelar", role: .cancel, action: {})
                            
                        }
                }
                .onDelete { index in
                    self.restaurants.remove(atOffsets: index)
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Restaurantes"))
        }
    }//var body
    
    private func delete(restaurant: Restaurant) {
        
        if let index = self.restaurants.firstIndex(where: {
            $0.id == restaurant.id
        }) {
            self.restaurants.remove(at: index)
        }
        
    }//delete

    private func setFavorite(restaurant: Restaurant) {
        if let index = self.restaurants.firstIndex(where: {
            $0.id == restaurant.id
        }) {
            self.restaurants[index].isFavorite.toggle()
        }
    }//setFavorite
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
