//
//  WalletView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 29/08/22.
//

import SwiftUI

struct WalletView: View {
    
    var cards: [Card] = myCards
    @State private var isCardPresented = false
    
    var body: some View {
        VStack {
            TopNavBar()
                .padding(.bottom)
            
            Spacer()
            
            ZStack {
                if isCardPresented {
                    ForEach(cards) { card in
                        CardView(card: card)
                            .offset(self.offset(for: card))
                            .padding(.horizontal, 35)
                            .zIndex(self.zIndex(for: card))
                            .transition(AnyTransition.slide.combined(with: .move(edge: .leading)).combined(with: .opacity))
                            .animation(self.transitionAnimation(for: card))
                    }
                }
            }
            .onAppear {
                self.isCardPresented.toggle()
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
    
    private func transitionAnimation(for card: Card) -> Animation {
        
        var delay = 0.0
        
        if let index = index(for: card) {
            delay = Double(cards.count - index) * 0.1
        }
        
        let animation = Animation.spring(response: 0.1, dampingFraction: 0.8, blendDuration: 0.02)
            .delay(delay)
        
        return animation
        
    }//transitionAnimation
    
}//WalletView

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
