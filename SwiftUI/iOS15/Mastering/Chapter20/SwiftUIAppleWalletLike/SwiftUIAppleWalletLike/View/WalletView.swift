//
//  WalletView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 29/08/22.
//

import SwiftUI

struct WalletView: View {
    
    var cards: [Card] = myCards
    
    var body: some View {
        VStack {
            TopNavBar()
                .padding(.bottom)
            
            Spacer()
            
            ZStack {
                ForEach(cards) { card in
                    CardView(card: card)
                        .padding(.horizontal, 35)
                }
            }
            
            Spacer()
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
