//
//  RestaurantDetailView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    let restaurant: Restaurant
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            Spacer()
            HandleBar()
            TitleBar()
            HeaderView(restaurant: self.restaurant)
            DetailInfoView(icon: "map", info: self.restaurant.location) .padding(.top)
            DetailInfoView(icon: "phone", info: self.restaurant.phone)
            DetailInfoView(icon: nil, info: self.restaurant.description)
                .padding(.top)
        }
        .background(Color.white)
        .cornerRadius(10, antialiased: true)
        
    }//body

}//RestaurantDetailView

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant())
    }
}
