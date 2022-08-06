//
//  BasicRowImage.swift
//  SwiftUIListActionSheetExample
//
//  Created by Edgar Adrián on 06/08/22.
//

import SwiftUI

struct BasicRowImage: View {
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
}//BasicRowImage

struct BasicRowImage_Previews: PreviewProvider {
    static var previews: some View {
        BasicRowImage(restaurant: Restaurant(name: "Cafe Deadend", image: "cafedeadend"))
    }
}
