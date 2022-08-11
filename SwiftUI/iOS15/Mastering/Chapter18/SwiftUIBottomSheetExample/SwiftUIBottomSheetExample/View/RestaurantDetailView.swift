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
        
        GeometryReader { g in
            VStack {
                Spacer()
                HandleBar()
                ScrollView {
                    TitleBar()
                    HeaderView(restaurant: self.restaurant)
                    DetailInfoView(icon: "map", info: self.restaurant.location) .padding(.top)
                    DetailInfoView(icon: "phone", info: self.restaurant.phone)
                    DetailInfoView(icon: nil, info: self.restaurant.description)
                        .padding(.top)
                }
                .background(Color.white)
                .cornerRadius(10, antialiased: true)
            }
            .offset(y: g.size.height/2)
            .animation(.interpolatingSpring(stiffness: 200.00, damping: 25.0, initialVelocity: 10.0))
            .edgesIgnoringSafeArea(.all)
        }
        
    }//body

}//RestaurantDetailView

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant())
    }
}
