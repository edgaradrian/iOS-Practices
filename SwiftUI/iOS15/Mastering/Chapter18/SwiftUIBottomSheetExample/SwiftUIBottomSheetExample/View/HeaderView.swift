//
//  HeaderView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct HeaderView: View {
    
    let restaurant: Restaurant
    
    var body: some View {
        
        Image(restaurant.image)
            .resizable()
            .scaledToFill()
            .frame(height: 300)
            .clipped()
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(restaurant.name)
                            .foregroundColor(.white)
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                        Text(restaurant.type)
                            .font(.system(.headline, design: .rounded))
                            .padding(5)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(5)
                    }
                    Spacer() }
                    .padding()
            )
        
    }//body
    
}//HeaderView

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(restaurant: Restaurant())
    }
}
