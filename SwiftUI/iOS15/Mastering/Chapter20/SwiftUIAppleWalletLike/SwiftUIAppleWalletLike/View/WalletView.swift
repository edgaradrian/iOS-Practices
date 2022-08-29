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
                        .offset(self.offset(for: card))
                        .padding(.horizontal, 35)
                        .zIndex(self.zIndex(for: card))
                }
            }
            
            Spacer()
        }
    }//body
    
    private func index(for card: Card) -> Int? {
        
        guard let index = cards.firstIndex(where: { $0.id == card.id }) else {
            return nil
        }
        
        return index
        
    }//index
    
    private func zIndex(for card: Card) -> Double {
        
        guard let cardIndex = index(for: card) else {
            return 0.0
        }
        
        return -Double(cardIndex)
        
    }//zIndex
    
    private func offset(for card: Card) -> CGSize {
        
        guard let cardIndex = index(for: card) else {
            return CGSize()
        }
        
        return CGSize(width: 0, height: -50 * CGFloat(cardIndex))
        
    }//offset
    
}//WalletView

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
