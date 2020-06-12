//
//  BigImageRow.swift
//  SwiftUIListExample
//
//  Created by Edgar Ruiz on 12/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct BigImageRow: View {
    var restaurant : Restaurant
    
    var body: some View {
        ZStack {
            
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
            )
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

struct BigImageRow_Previews: PreviewProvider {
    static var previews: some View {
        BigImageRow(restaurant: Restaurant(name: "Fonda Fulanita", image: "")).previewLayout(.sizeThatFits)
    }
}
