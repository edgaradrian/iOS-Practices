//
//  Restaurant.swift
//  SwiftUIListExample
//
//  Created by Edgar Ruiz on 12/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}//Restaurant

var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                    Restaurant(name: "Homei", image: "homei"),
                    Restaurant(name: "Teakha", image: "teakha"),
                    Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                    Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                    Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                    Restaurant(name: "Po's Atelier", image: "posatelier"),
                    Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                    Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                    Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                    Restaurant(name: "Upstate", image: "upstate"),
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
