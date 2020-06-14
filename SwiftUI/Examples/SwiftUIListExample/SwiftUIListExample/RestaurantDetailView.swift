//
//  RestaurantDetailView.swift
//  SwiftUIListExample
//
//  Created by Edgar Ruiz on 14/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant
    
    var body: some View {
        BigImageRow(restaurant: restaurant)
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant(name: "Fondita", image: "image"))
    }
}
