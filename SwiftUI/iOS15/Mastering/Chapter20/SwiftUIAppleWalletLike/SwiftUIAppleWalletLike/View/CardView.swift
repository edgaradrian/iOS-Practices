//
//  CardView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import SwiftUI

struct CardView: View {
    
    var card: Card
    
    var body: some View {
        
        Image(card.image)
            .resizable()
            .scaledToFit()
            .overlay(
                VStack(alignment: .leading) {
                    Text(card.number)
                        .bold()
                    
                    HStack {
                        Text(card.name)
                            .bold()
                        Text("Valid Thru")
                            .font(.footnote)
                        Text(card.expiryDate)
                            .font(.footnote)
                    }
                }
                .foregroundColor(.white)
                .padding(.leading, 25)
                .padding(.bottom, 20)
                , alignment: .bottomLeading
            )
            .shadow(color: .gray, radius: 1.0, x: 0.0, y: 1.0)
        
    }//body
    
    
}//CardView

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: myCards[0])
            .previewLayout(.sizeThatFits)
    }
}
